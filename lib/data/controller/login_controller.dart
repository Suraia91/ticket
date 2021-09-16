import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ticket/data/controller/auth_controller.dart';
import 'package:ticket/data/models/user_models.dart';

class LoginController {
  final auth = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        // 'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
    try {
      final res = await _googleSignIn.signIn();
      final user = UserModel(name: res!.displayName!, photourl: res!.photoUrl);

      auth.setUser(context, user);
      print("resp $res");
    } catch (error) {
      auth.setUser(context, null);
      print(error);
    }
  }
}
