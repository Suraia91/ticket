import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ticket/app_main.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text(
                'Erro ao carregar firebase',
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        }
        // Once complete, show your application
        else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        // Otherwise, show something whilst waiting for initialization to complete
      },
    );
  }
}
