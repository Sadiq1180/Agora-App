import 'dart:async';
import 'package:agora/Reset%20password.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 19, top: 40),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 39,
                        height: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Please check your phone",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "We’ve sent an SMS with an activation code\n"
                        "to your phone +923170681180",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 39),

          const OTPInput(),
          const SizedBox(height: 20),

          const CountDownTimer(
              //    duration: Duration(minutes: 1)
              ), // Countdown timer
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
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

    return Pinput(
      length: 5,
      showCursor: false,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
            // border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1,)),
            border: Border.all(color: Colors.black)),
      ),
      onCompleted: (pin) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const ResetPassword()));
      },
    );
  }
}

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({super.key});
  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  int count = 20;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (count == 0) {
        timer.cancel();
      } else {
        print(count);
        count--;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Text(
        " Send code again in  00:$count",
        style: const TextStyle(
            fontSize: 24, color: Colors.black, fontWeight: FontWeight.w300),
      ),
    );
  }
}
