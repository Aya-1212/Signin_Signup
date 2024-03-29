// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:signin_signup_interface/sign_up.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}
