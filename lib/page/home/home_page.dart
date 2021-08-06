import 'package:bwa_ui/theme.dart';
import 'package:bwa_ui/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulMargin,
          left: defaulMargin,
          right: defaulMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Irvan Renaldi',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    '@irvanrenaldi',
                    style: primaryTextStyle,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notification-page');
              },
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/notification.png'),
                )),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulMargin,
          right: defaulMargin,
          left: defaulMargin,
        ),
        child: Column(
          children: [
            ChatTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        content(),
      ],
    );
  }
}
