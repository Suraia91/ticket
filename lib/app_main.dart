import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticket/data/models/user_models.dart';
import 'package:ticket/modules/barcode_scanner/scanner_page.dart';
import 'package:ticket/modules/home/home_page.dart';
import 'package:ticket/modules/insert_bolet/inser_boletpage.dart';
import 'package:ticket/modules/splash.dart';
import 'data/utility/res.dart';
import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Flow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppResources.primary,
      ),
      home: LoginPage(),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/login": (context) => LoginPage(),
        "/splash": (context) => SplashPage(),
        "/barcode_scanner": (context) => ScannerPage(),
        "/insert_bolet": (context) => InsertBoletPage(
              barcode: ModalRoute.of(context) != null
                  ? ModalRoute.of(context)!.settings.arguments.toString()
                  : null,
            )
      },
    );
  }
}
