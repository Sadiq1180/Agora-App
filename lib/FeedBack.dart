import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  static const String routeName = 'FeedBack';
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Feedback'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 17),
            child: Text(
              "partnrSocial App Feedback",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              "Your feedback is incredibly valuable as we strive to make Partnr one of the most effective and loved social platforms."
              " Whether it's a suggestion for specific improvements, a feature you love, or a challenge you've encountered,"
              " your insights matter and we encourage you to send them to us here or on www.partnrsocial.app.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 50,
              width: 345,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: SColors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Give feedback at Email",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: SColors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
