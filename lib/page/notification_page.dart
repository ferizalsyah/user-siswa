import 'package:flutter/material.dart';
import 'package:bwa_ui/theme.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        title: Text(
          'Halaman Notifikasi',
          style: secondaryTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulMargin,
          left: defaulMargin,
          right: defaulMargin,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halaman NOtifikasi',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'halaman notig',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'now',
                  style: primaryTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xffede6e6),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
