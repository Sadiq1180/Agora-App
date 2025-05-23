import 'package:agora/MySaved.dart';
import 'package:agora/ProfileNotifications.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/SettingWidget.dart';
import 'package:flutter/material.dart';
import 'FeedBack.dart';
import 'Help.dart';
import 'Languages.dart';
import 'DeActivate.dart';
import 'PaymentMethods.dart';
import 'PrivacyPolicy.dart';
import 'Views/Edit Profile/EditProfile.dart';
import 'Views/Privacy Settings/PrivacySettings.dart';
import 'TermsConditions.dart';

class ProfileSetting extends StatelessWidget {
  static const String routeName = 'ProfileSetting';
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Settings'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, EditProfile.routeName);
                },
                child: SettingWidget(
                  title: "Edit Profile",
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 285.0),
              child: Text(
                "General",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ProfileNotifications.routeName);
              },
              child: SettingWidget(
                title: "Notifications",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context,MySaved.routeName);
              },
              child: SettingWidget(
                title: "My Saved",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Languages.routeName);
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const Languages()));
              },
              child: SettingWidget(
                title: "Languages",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.pushNamed(context, PrivacySettings.routeName);
              },
              child: SettingWidget(
                title: "Privacy Settings",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PaymentMethods.routeName);
              },
              child: SettingWidget(
                title: "Payment Methods",
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 255.0),
              child: Text(
                "Partner Social",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, TermsConditions.routeName);
              },
              child: SettingWidget(
                title: "Terms & Conditions",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PrivacyPolicy.routeName);
              },
              child: SettingWidget(
                title: "Privacy Policy",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.pushNamed(context,FeedBack.routeName);
              },
              child: SettingWidget(
                title: "Feedback",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Help()));
              },
              child: SettingWidget(
                title: "Help",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.pushNamed(context, DeActivate.routeName);
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const DeActivate()));
              },
              child: SettingWidget(
                title: "Log Out",
                titleColor: SColors.error,
                weight: FontWeight.w500,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}