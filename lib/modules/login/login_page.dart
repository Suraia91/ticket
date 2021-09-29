import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/data/utility/social_login.dart';
import 'package:ticket/data/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppResources.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppResources.primary,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppResources.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.05,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppResources.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      'Organize seus tickets em um só lugar',
                      style: AppResources.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
