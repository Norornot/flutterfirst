import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home.dart';
import 'package:myfirstapp/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/routes.dart';

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
          fontFamily: GoogleFonts.ubuntu().fontFamily),
      routes: {
        "/": (context) => LogIn(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LogIn(),
      },
    );
  }
}
