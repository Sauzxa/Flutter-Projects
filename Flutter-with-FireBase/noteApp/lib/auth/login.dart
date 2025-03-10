import 'dart:js_interop';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/components/customeButton.dart';
import 'package:project1/components/customelogo.dart';
import 'package:project1/components/textformfiled.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController emailLogin = TextEditingController();
  TextEditingController passwrodLogin = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey();

  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginkey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 50),
                  Customelogo(),
                  Container(height: 60),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.lightBlue),
                  ),
                  Container(height: 20),
                  Text(
                    "Login in to continue using the app",
                    style: TextStyle(color: Colors.grey[500], fontSize: 15),
                  ),
                  Container(
                    height: 20,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                  ),
                  Container(height: 10),
                  CustomTextFormField(
                      hintText: "Enter You Email",
                      myController: emailLogin,
                      validator: (val) {
                        if (val == "") {
                          return "can't be empty";
                        }
                      }),
                  Container(height: 20),
                  Text(
                    "password",
                    style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val == "") {
                        return "can't be empty";
                      }
                    },
                    controller: passwrodLogin,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                        hintText: "Enter your Password",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsecureText = !_obsecureText;
                              });
                            },
                            child: Icon(_obsecureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.blue[50],
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget you Password ?",
                        style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Customebutton(
                title: "Login",
                onPressed: () async {
                  if (loginkey.currentState!.validate()) {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                        email: emailLogin.text,
                        password: passwrodLogin.text,
                      );

                      Navigator.of(context).pushNamedAndRemoveUntil(
                        "homepage",
                        (route) => false,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (context.mounted) {
                        // Prevents errors if widget is unmounted
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                          await AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            title: 'Error',
                            desc: 'No user found for that email.',
                            btnOkOnPress: () {},
                          ).show();
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                          await AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            title: 'Error',
                            desc: 'Wrong password provided for that user.',
                            btnOkOnPress: () {},
                          ).show();
                        }
                      }
                    }
                  } else {
                    print(
                        "Not valid"); // ✅ Now correctly prints if validation fails
                  }
                },
              ),
              Container(
                height: 20,
              ),
              Center(
                  child: Text(
                'Or Login With',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              )),
              Container(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 50,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/facebook.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () => {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "images/google.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () => {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          width: 50,
                          height: 50,
                          "images/apple.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "Dont Have An Account ? ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("signup");
                    },
                    child: Center(
                        child: Text(
                      "Registre",
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
