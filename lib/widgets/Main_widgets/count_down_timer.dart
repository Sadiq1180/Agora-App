import 'dart:async';

import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({super.key});

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  int count = 20;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (count == 0) {
        timer.cancel();
      } else {
        if (mounted) {
          setState(() {
            count--;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Prevent timer from running after widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Text(
          "Send code again in 00:${count.toString().padLeft(2, '0')}",
          style: const TextStyle(
            fontSize: 20,
            color: SColors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
