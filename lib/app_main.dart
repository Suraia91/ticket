import 'package:flutter/material.dart';
import 'package:ticket/modules/home/home_page.dart';
import 'package:ticket/modules/splash.dart';
import 'data/utility/res.dart';
import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Flow',
      theme: ThemeData(
        primaryColor: AppResources.primary,
      ),
      home: LoginPage(),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/splash": (context) => SplashPage()
      },
    );
  }
}
