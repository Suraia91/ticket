import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/login/login_page.dart';
import 'package:ticket/modules/splash.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Play Flow',
        theme: ThemeData(
          primaryColor: AppResources.primary,
        ),
        home: LoginPage());
  }
}
