// ignore_for_file: deprecated_member_use

import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  static const String routeName = 'PrivacyPolicy';
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Privacy Policy'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 17),
            child: Text(
              "PartnerSocial Terms & Conditions",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
            child: Text(
              "Welcome to Partner Social! Before you dive into the exciting"
                  " world of social connections, courses, and events, please take"
                  " a moment to review our brief terms and conditions.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "1. Acceptance of Terms:",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
            child: Text(
              "By using the Partner Social app, you agree to abide by these terms and conditions.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black.withOpacity(0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "2.User Responsibilities:",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
            child: Text(
              "You are responsible for the content you post. Respect the"
                  " community guidelines and ensure your contributions are lawful and respectful.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black.withOpacity(0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "3. Privacy:",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 10),
            child: Row(
              children: [
                Text(
                  "We value your privacy. Check out our ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: SColors.black.withOpacity(0.5)),
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(color: SColors.info),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              "to understand how we collect, use, and protect your personal information.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,color: SColors.black.withOpacity(0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "4. Intellectual Property:",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
            child: Text(
              "Respect intellectual property rights. Don't infringe on copyrights or trademarks when posting content",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black.withOpacity(0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "5. Intellectual Property:",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
            child: Text(
              "Engaging in harmful activities, spam, or any form of abuse is not allowed. Be a positive force in our community.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: SColors.black.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
  }
}