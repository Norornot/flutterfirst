import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/routes.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  String man = "";
  bool change = false;
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1, milliseconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                "Welcome$man$name",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 148, 37, 217)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your username.",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username is empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        man = ",";
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is empty";
                        } else if (value.length < 6) {
                          return "Length less than 6";
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(change ? 45 : 8),
                child: InkWell(
                  onTap: () => movetoHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    width: change ? 45 : 150,
                    height: 45,
                    child: change
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
