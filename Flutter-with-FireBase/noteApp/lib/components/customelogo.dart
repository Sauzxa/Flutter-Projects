import 'package:flutter/material.dart';

class Customelogo extends StatelessWidget {
  const Customelogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70), color: Colors.blue[300]),
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          width: 80,
          height: 80,
          alignment: Alignment.center,
          child: Image.asset(
            "images/notelogo.jpg",
            fit: BoxFit.cover,
            height: 40,
          )),
    );
  }
}
