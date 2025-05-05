import 'package:flutter/material.dart';

class STextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;

  const STextField({
    super.key,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 55,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}