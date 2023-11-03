// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auth/routes/log_in.dart';
import 'package:flutter_auth/routes/sign_up.dart';
import 'package:flutter_auth/routes/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/LogIn': (context) => const LogIn(),
        '/SignUp': (context) => const SignUp(),
      },
    );
  }
}
