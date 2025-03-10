import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/components/customeButton.dart';
import 'package:project1/components/customelogo.dart';
import 'package:project1/components/textformfiled.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController usernamesignup = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  GlobalKey<FormState> signupKey = GlobalKey();
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: signupKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(child: Customelogo()),
              const SizedBox(height: 40),

              // Title
              Text(
                "SignUp",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.lightBlue),
              ),
              const SizedBox(height: 10),
              Text(
                "Sign up to continue using the app",
                style: TextStyle(color: Colors.grey[500], fontSize: 15),
              ),
              const SizedBox(height: 30),

              // Username Field
              buildInputFielduser(
                  "Username", "Enter Your Username", usernamesignup),

              // Email Field
              buildInputField("Email", "Enter Your Email", email),

              // Password Field
              buildPasswordField("Password", "Enter your Password", password),

              // Confirm Password Field
              buildPasswordField(
                  "Confirm Password", "Confirm your Password", confirmPassword),

              const SizedBox(height: 30),

              // Signup Button
              Customebutton(
                  title: "Sign Up",
                  onPressed: () async {
                    if (password.text != confirmPassword.text) {
                      print("Passwords do not match!");
                      return;
                    }
                    if (signupKey.currentState!.validate()) {
                      try {
                        final credential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: email.text,
                          password: password.text,
                        );
                        Navigator.of(context).pushReplacementNamed(
                          "homepage",
                          arguments: {"username": usernamesignup.text},
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    }
                  }),

              const SizedBox(height: 20),

              // Login Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account? ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("login");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.lightBlue),
        ),
        const SizedBox(height: 10),
        TextFormField(
          validator: (val) {
            if (val == "") {
              return "can't be empty";
            }
          },
          controller: controller, // Utilisation correcte
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hint, // Utilisation correcte
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10), // Padding de l'icône
              child: const Icon(Icons.email),
            ),
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            filled: true,
            fillColor: Colors.blue[50],
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 20), // Meilleur padding
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildInputFielduser(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.lightBlue),
        ),
        const SizedBox(height: 10),
        TextFormField(
          validator: (val) {
            if (val == "") {
              return "can't be empty";
            }
          },
          controller: controller, // Utilisation correcte
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hint, // Utilisation correcte
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10), // Padding de l'icône
              child: const Icon(Icons.person),
            ),
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            filled: true,
            fillColor: Colors.blue[50],
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 20), // Meilleur padding
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildPasswordField(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.lightBlue),
        ),
        const SizedBox(height: 10), // ✅ Consistent spacing
        TextFormField(
          validator: (val) {
            if (val == "") {
              return "can't be empty";
            }
          },
          controller: controller,
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obsecureText,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _obsecureText = !_obsecureText;
                  });
                },
                child: Icon(
                  _obsecureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            filled: true,
            fillColor: Colors.blue[50],
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
