import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/auth/login.dart';
import 'package:project1/auth/signup.dart';
import 'package:project1/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project1/homepage.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print(
            '========================================User is currently signed out!');
      } else {
        print('===============================User is signed in!');
      }
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirebaseAuth.instance.currentUser == null ? Login() : Homepage(),
        debugShowCheckedModeBanner: false,
        // This trailing comma makes auto-formatting nicer for build methods.
        routes: {
          "signup": (context) => Signup(),
          "login": (context) => Login(),
          "homepage": (context) => Homepage(),
        });
  }
}
