import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/SettingWidget.dart';
import 'package:flutter/material.dart';

class ProfileNotifications extends StatefulWidget {
  const ProfileNotifications({super.key});

  @override
  State<ProfileNotifications> createState() => _ProfileNotificationsState();
}

class _ProfileNotificationsState extends State<ProfileNotifications> {
  // Map for switch states
  Map<String, bool> switchStates = {
    "Notifications": true,
    "Groups": false,
    "Messages": false,
    "Emails": true,
    "Events": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Notifications'),
      body: Column(
        children: switchStates.keys.map((key) {
          return SettingWidget(
            title: key,
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
        }).toList(),
      ),
    );
  }
}
