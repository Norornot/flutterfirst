import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home.dart';
import 'package:myfirstapp/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/utils/routes.dart';
import 'package:myfirstapp/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LogIn(),
      },
    );
  }
}
