import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 50),
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.blue[300]),
                      margin: EdgeInsets.only(top: 50),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/notelogo.jpg",
                        fit: BoxFit.cover,
                        height: 40,
                      )),
                ),
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
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Enter your Email",
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.email),
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
                Container(height: 20),
                Text(
                  "password",
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                ),
                TextFormField(
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
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget you Password ?",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                  ),
                ),
              ],
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              color: Colors.blue,
              onPressed: () {},
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
                Center(
                    child: Text(
                  "Registre",
                  style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
