import 'package:agora/Views/Privacy%20Settings/widget/BlockedUsersCont.dart';
import 'package:agora/widgets/CircularAvatar.dart';
import 'package:flutter/material.dart';
import '../../widgets/AppBarCustom.dart';

class BlockedUsers extends StatefulWidget {
  const BlockedUsers({super.key});

  @override
  State<BlockedUsers> createState() => _BlockedUsersState();
}

class _BlockedUsersState extends State<BlockedUsers> {
  // var _value2 = "Everyone";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Blocked Users'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "People you have blocked will not be able to Follow you.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20, top: 10),
              child: Text(
                "• See your profile.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(
                "• See your posts.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(
                "• React to your posts.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(
                "• Comment on your posts.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(
                "• See the groups you are part of.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(
                "• See the events you are going.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(
                "• See your greets.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Blocked",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          SizedBox(
            height: 10,
          ),
          BlockedUsersCont(),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
