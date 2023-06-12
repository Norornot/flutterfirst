import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    int age = 19;
    String name = "Bobby";
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Center(
        child: Container(
          child: Text("My name is $name.I am ${age + 1} years old"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
