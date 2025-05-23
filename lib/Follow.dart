import 'package:agora/BottomNavigation.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/FollowRequest.dart';
import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  static const String routeName = 'Follow';
  const Follow({super.key});

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 300, top: 40),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, BottomNavigation.routeName);
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => BottomNavigation(),
                    // ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: SColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Suggested Profiles",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              "Send friend requests by pressing the Connect button,\n"
              " or wait to find users under the Discover tab",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 30,
            ),
            FollowRequest(
              name: "Muhammad Sadiq",
              username: "@Sadii",
              bio:
                  "FLutter Ui developer with one month of experience at the section soft",
              profileImage:SImages.person2,
            ),
            SizedBox(
              height: 20,
            ),
            FollowRequest(
              name: "Ihsan Ali khan",
              username: "@sadiqali",
              bio:
                  "Ui designer with one month of experience at the section soft",
              profileImage:SImages.person1,
            ),
            SizedBox(
              height: 20,
            ),
            FollowRequest(
              name: "Muhammad ali",
              username: "@sadistic",
              bio:
                  "Web developer and the field of design in the field of design and implementation",
              profileImage: SImages.unknownProfileImage,
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SColors.lightBlueAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                      elevation: 3,
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(color: SColors.white),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
