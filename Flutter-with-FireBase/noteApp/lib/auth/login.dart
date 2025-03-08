import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50),
                width: 70,
                height: 70,
                alignment: Alignment.center,
                child: Image.asset(
                  "images/notelogo.jpg",
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
    );
  }
}
