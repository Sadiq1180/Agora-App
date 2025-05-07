import 'package:agora/Reset%20password.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPInput extends StatelessWidget {
  static const String routeName = 'OTPInput';
  const OTPInput({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return Center(
      child: Pinput(
        length: 5,
        showCursor: false,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: Colors.black),
          ),
        ),
        onCompleted: (pin) {
          // You can validate pin here before navigating
          Navigator.popAndPushNamed(context, ResetPassword.routeName);
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (ctx) => const ResetPassword()),
          // );
        },
      ),
    );
  }
}