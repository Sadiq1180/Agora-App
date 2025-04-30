import 'package:agora/MySaved.dart';
import 'package:agora/ProfileNotifications.dart';
import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/SettingWidget.dart';
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(
                          // userName: "Muhammad Ali",
                          // userImage: "assets/images/follow images/Ali.png",
                          // userDescription: "@Muhammad Ali",

                      ),
                    ),
                  );
                },
                child: SettingWidget(
                  title: "Edit Profile",
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const MainProfileEdit()));
                  },
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfileNotifications()));
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MySaved()));
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Languages()));
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PrivacySettings()));
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PaymentMethods()));
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TermsConditions()));
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy()));
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FeedBack()));
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DeActivate()));
              },
              child: SettingWidget(
                title: "Log Out",
                titleColor: Colors.red,
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
