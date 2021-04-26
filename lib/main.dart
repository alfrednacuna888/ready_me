import 'package:flutter/material.dart';
import 'package:ready_me/dashboard.dart';
import 'login.dart';
import 'signup.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/dashboard': (context) => Dashboard()
      },
    );
  }
}
