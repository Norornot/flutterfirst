import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int age = 19;
    String name = "Bobby";
    return Scaffold(
      appBar: AppBar(
        title: Text("Bobby"),
      ),
      body: Center(
        child: Container(
          child: Text("My name is $name.I am ${age + 1} years old"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
