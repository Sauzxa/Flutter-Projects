import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    final String username = args?["username"] ?? "Guest";

    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        actions: [
          MaterialButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("login", (route) => false);
              },
              child: Text("sing out")),
        ],
      ),
      body: Center(
        child: Text(
          "Welcome, $username!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
