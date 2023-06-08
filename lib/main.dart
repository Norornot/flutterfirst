import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home.dart';
import 'package:myfirstapp/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/": (context) => LogIn(),
        "/home": (context) => Homepage(),
        "/login": (context) => LogIn(),
      },
    );
  }
}
