import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/count_down_timer.dart';
import 'package:agora/widgets/otp_input.dart';
import 'package:flutter/material.dart';
class Verification extends StatelessWidget {
    static const String routeName = 'Verification';
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: SColors.black.withOpacity(0.1)),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios, size: 16),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Please check your phone",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 15),
                const Text(
                  "We’ve sent an SMS with an activation code\n"
                  "to your phone +923170681180", // Ideally pass dynamically
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 39),
          const OTPInput(),
          const SizedBox(height: 20),
          const CountDownTimer(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}