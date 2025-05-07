import 'package:agora/Views/Privacy%20Settings/OnlineStatus.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/SettingWidget.dart';
import 'package:flutter/material.dart';
import 'BlockedUsers.dart';
import 'Greetss.dart';
import 'Groupss.dart';
import 'Posts.dart';
import 'ProfileLocking.dart';
import 'eventss.dart';

class PrivacySettings extends StatefulWidget {
  static const String routeName = 'PrivacySettings';
  const PrivacySettings({super.key});

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Privacy Settings'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, ProfileLocking.routeName);
                },
                child: SettingWidget(
                  title: 'Profile Locking',
                  dividerColor: SColors.grey,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, Greetss.routeName);
                },
                child: SettingWidget(
                  title: 'Greets',
                  dividerColor: Colors.grey,
                
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, Onlinestatus.routeName);
                },
                child: SettingWidget(
                  title: 'Online Status',
                  dividerColor: Colors.grey,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, Groupss.routeName);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>  Groupss()));
                },
                child: SettingWidget(
                  title: ' Groups',
                  dividerColor: Colors.grey,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context,eventss.routeName);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>  eventss()));
                },
                child: SettingWidget(
                  title: 'Events',
                  dividerColor: Colors.grey,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, Posts.routeName);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>  Posts()));
                },
                child: SettingWidget(
                  title: 'Posts',
                  dividerColor: Colors.grey,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, BlockedUsers.routeName);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) =>  BlockedUsers()));
                },
                child: SettingWidget(
                  title: 'Blocked Users',
                  dividerColor: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
