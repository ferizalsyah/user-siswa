import 'package:bwa_ui/page/home/home_page.dart';
import 'package:bwa_ui/page/home/profile_page.dart';
import 'package:bwa_ui/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 21,
                color: currentIndex == 0 ? bottomColor : Color(0xff808191),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 21,
                color: currentIndex == 1 ? bottomColor : Color(0xff808191),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
