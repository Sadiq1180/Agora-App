import 'package:agora/Views/HomeScreens/CreatePoll/widget/PostHeaderSection.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/ElevatedButton.dart';
import 'package:flutter/material.dart';

import 'SponsorPost.dart';

class CreatePooost extends StatelessWidget {
  static const String routeName = 'CreatePooost';
  const CreatePooost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Create Post'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: PostHeaderSection(
                profileImage: SImages.createPostImage3,
                username: 'Jack William',
                withPerson: "Alif & Khalid",
                location: "Karachi,Pakistan"),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 60.0, bottom: 10, top: 10),
            child: Text(
                "Great memories with great new friends enjoying the fun of life",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(SImages.createPostImage4),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Your Groups",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Select the relevant Groups you want to share the post with as well (optional)",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              height: 60,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                          SImages.createPostImage5,
                            width: 55,
                            height: 48,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Asif Wedding Program",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Private Group",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "12 Members",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Container(
              height: 60,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                       SImages.createPostImage2,
                            width: 55,
                            height: 48,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ahmad Wedding Program",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Private Group",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "20 Members",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SponsorPost()));
                  Navigator.pushNamed(context, SponsorPost.routeName);
                },
                child: Text(
                  "Sponsor Post",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: CustomElevatedButton(
              text: "Post",
              color: Colors.lightBlueAccent,
              onPressed: () {
              },
            ),
          )
        ],
      ),
    );
  }
}
