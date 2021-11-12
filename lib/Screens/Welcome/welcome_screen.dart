import 'package:aar/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:aar/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null){
      return HomePage();
    }
    */
    return Scaffold(
      body: Body(),
    );
  }
}