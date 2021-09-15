import 'package:flutter/material.dart';
import 'package:ticket/data/utility/res.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppResources.shape,
            borderRadius: BorderRadius.circular(5.0),
            border:
                Border.fromBorderSide(BorderSide(color: AppResources.stroke))),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppResources.google),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 56,
                      width: 1,
                      color: AppResources.stroke,
                    )
                  ],
                )),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Entrar com Google',
                      style: AppResources.buttonGray,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
