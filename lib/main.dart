import 'package:bwa_ui/page/detail_chat_page.dart';
import 'package:bwa_ui/page/getstarted_page.dart';
import 'package:bwa_ui/page/home/main_page.dart';
import 'package:bwa_ui/page/notification_page.dart';
import 'package:bwa_ui/page/sign_in_page.dart';
import 'package:bwa_ui/page/sign_up_page.dart';
import 'package:bwa_ui/page/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/getstarted': (context) => GetstartedPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/chat-page': (context) => ChatPage(),
        '/notification-page': (context) => NotificationPage(),
      },
    );
  }
}
