import 'package:bwa_ui/theme.dart';
import 'package:flutter/material.dart';

class GetstartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/get-started.png',
                width: 300,
              ),
              SizedBox(height: 20),
              Text(
                'Madrasah Ibtidaiyah',
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sistem Informasi Pendidikan',
                style: primaryTextStyle.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 30, left: 30, right: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign-in');
          },
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Get Started',
            style: secondaryTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              content(),
              Spacer(),
              footer(),
            ],
          ),
        ));
  }
}
