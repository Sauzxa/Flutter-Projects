import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController myController;
  final String hintText;

  const CustomTextFormField({
    super.key,
    required this.myController,
    required this.hintText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.myController, // Utilisation correcte
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: widget.hintText, // Utilisation correcte
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
    );
  }
}
