import 'package:agora/Admin%20List/wigdet/memberContainer.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/ElevatedButton.dart';
import 'package:flutter/material.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({super.key});

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBarCustom(title: "", rightIcon: Icon(Icons.skip_next_outlined)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Invite Friends",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                ),
                Text("Invite all Friends"),
              ],
            ),
            memberContainer(
              profileImage: SImages.unknownProfileImage,
            ),
            SizedBox(height: 10),
            memberContainer(),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              profileImage: SImages.person3,
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              profileImage: SImages.person2,
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              profileImage: SImages.person1,
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomElevatedButton(
          text: "Complete",
          onPressed: () {},
          color: SColors.lightBlueAccent,
        ),
      ),
    );
  }
}
