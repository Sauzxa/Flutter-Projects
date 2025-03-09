import 'package:flutter/material.dart';

class Customebutton extends StatefulWidget {
  final Function()? onPressed;
  final String title;
  const Customebutton({super.key, this.onPressed, required this.title});

  @override
  State<Customebutton> createState() => _Customebutton();
}

class _Customebutton extends State<Customebutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        widget.title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      ),
      color: Colors.blue,
      onPressed: widget.onPressed,
    );
  }
}
