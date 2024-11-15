import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscure;
  const Textfield({
    super.key,
    required this.controller,
    required this.hinttext,
    required this.obscure,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller:controller,
        obscureText: obscure,
          decoration: InputDecoration(
        enabledBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.grey.shade500)
      )),
    );
  }
}
