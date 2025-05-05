import 'package:flutter/material.dart';

class SPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;

  const SPasswordField({
    super.key,
    required this.controller,
    this.hintText = "Password",
  });

  @override
  State<SPasswordField> createState() => _SPasswordFieldState();
}

class _SPasswordFieldState extends State<SPasswordField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 55,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.black45,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
