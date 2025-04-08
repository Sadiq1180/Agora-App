import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/SettingWidget.dart';

class ProfileLocking extends StatefulWidget {
  const ProfileLocking({super.key});

  @override
  State<ProfileLocking> createState() => _ProfileLockingState();
}

class _ProfileLockingState extends State<ProfileLocking> {
  Map<String, bool> switchStates = {
    "Lock Profile": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Profile Locking'),
      body: Column(
        children: [
          ...switchStates.keys.map(
            (key) {
              return SettingWidget(
                title: key,
                dividerColor: Colors.blue,
                trailingWidget: Switch(
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  thumbColor: MaterialStateProperty.all(Colors.white),
                  value: switchStates[key]!,
                  onChanged: (value) {
                    setState(() {
                      switchStates[key] = value;
                    });
                  },
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Make all of your past and future media uploads and account activity private in one click.',
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "• Only Friends or mutual followings can see your activity and media.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "• You will still appear in searches related to your provided location and interest tags",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "• Users can still see your account and request to Friend you.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 24),
                child: Text(
                  "• Your Prompts and Greets will only be shown to Friends.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
