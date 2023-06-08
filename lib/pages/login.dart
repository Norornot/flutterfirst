import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Container(
        child: Text(
          "Login Success.",
          style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          textScaleFactor: 2.0,
        ),
      )),
    );
  }
}
