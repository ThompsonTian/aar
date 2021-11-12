import 'dart:ffi';

import 'package:aar/Screens/Dashboard/dashboard_screen.dart';
import 'package:aar/Screens/Home/home_screen.dart';
import 'package:aar/Screens/Login/login_screen.dart';
import 'package:aar/constants.dart';
import 'package:flutter/material.dart';
import 'package:aar/Screens/Welcome/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'aar',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: DashboardScreen(),
    );
  }
}

