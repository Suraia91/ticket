import 'package:flutter/material.dart';
import 'package:ticket/data/controller/auth_controller.dart';
import 'package:ticket/data/utility/res.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppResources.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppResources.union)),
          Center(child: Image.asset(AppResources.logoFull)),
        ],
      ),
    );
  }
}
