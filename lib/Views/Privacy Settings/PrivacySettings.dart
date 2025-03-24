import 'package:agora/Views/Privacy%20Settings/OnlineStatus.dart';
import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/SettingWidget.dart';
import 'package:flutter/material.dart';

import '../../Greets.dart';
import 'BlockedUsers.dart';
import 'Greetss.dart';
import 'Groupss.dart';
import 'Posts.dart';
import 'ProfileLocking.dart';
import 'eventss.dart';

class PrivacySettings extends StatefulWidget {
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileLocking()));
                },
                child: SettingWidget(
                  title: 'Profile Locking',
                  dividerColor: Colors.grey,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Greetss()));
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Onlinestatus()));
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Groupss()));
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  eventss()));
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Posts()));
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  BlockedUsers()));
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
