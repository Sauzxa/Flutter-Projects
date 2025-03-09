import 'package:flutter/material.dart';
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
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20), // ✅ Padding for overall spacing
        child: ListView(
          children: [
            Center(child: Customelogo()), // ✅ Logo centered
            const SizedBox(height: 40), // ✅ Adjusted spacing

            // Title
            Text(
              "SignUp",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.lightBlue),
            ),
            const SizedBox(height: 10), // ✅ Adjusted spacing
            Text(
              "Sign up to continue using the app",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
            const SizedBox(height: 30), // ✅ Adjusted spacing

            // Username Field
            buildInputField("Username", "Enter Your Username", usernamesignup),

            // Email Field
            buildInputField("Email", "Enter Your Email", email),

            // Password Field
            buildPasswordField("Password", "Enter your Password", password),

            // Confirm Password Field
            buildPasswordField(
                "Confirm Password", "Confirm your Password", password),

            const SizedBox(height: 30), // ✅ Space before the button

            // Signup Button
            Customebutton(
              title: "Sign Up",
              onPressed: () {},
            ),

            const SizedBox(height: 20), // ✅ Space before login text

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
                    Navigator.of(context).pushNamed("login");
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
    );
  }

  /// ✅ Reusable function for text fields
  Widget buildInputField(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.lightBlue),
        ),
        const SizedBox(height: 10), // ✅ Consistent spacing
        CustomTextFormField(
          hintText: hint,
          myController: controller,
        ),
        const SizedBox(height: 20), // ✅ Space between fields
      ],
    );
  }

  /// ✅ Reusable function for password fields
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
        const SizedBox(height: 20), // ✅ Space between fields
      ],
    );
  }
}
