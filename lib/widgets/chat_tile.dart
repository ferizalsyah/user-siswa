import 'package:bwa_ui/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat-page');
      },
      child: Container(
        margin: EdgeInsets.only(),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bahasa Indonesia',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Mata pelajaran resmi',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff0f0101),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
