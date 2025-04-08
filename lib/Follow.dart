import 'package:agora/BottomNavigation.dart';
import 'package:agora/Forgot.dart';
import 'package:agora/widgets/FollowRequest.dart';
import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
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
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomNavigation(),
                    ));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.black,
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
              profileImage: "assets/images/follow images/person2.png",
            ),
            SizedBox(
              height: 20,
            ),
            FollowRequest(
              name: "Ihsan Ali khan ali jan khan",
              username: "@sadiqali",
              bio:
                  "Ui designer with one month of experience at the section soft",
              profileImage: "assets/images/follow images/person1.png",
            ),
            SizedBox(
              height: 20,
            ),
            FollowRequest(
              name: "Muhammad ali",
              username: "@sadistic",
              bio:
                  "Web developer and the field of design in the field of design and implementation",
              profileImage: "assets/images/follow images/person2.png",
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
                      backgroundColor: Colors.lightBlueAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                      elevation: 3,
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
