import 'package:bwa_ui/theme.dart';
import 'package:bwa_ui/widgets/chat_buble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              'assets/icon_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Irvan Renaldi',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Online',
                  style: primaryTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaulMargin,
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Apakah Hari ini Ada tugas ?',
          ),
          ChatBubble(
            isSender: false,
            text: 'Ya, Coba Kerjakan Tugas yang telah saya berikan',
          ),
        ],
      );
    }

    Widget chatInput() {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Type Messege',
                          hintStyle: primaryTextStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.attach_file,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.send,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}
