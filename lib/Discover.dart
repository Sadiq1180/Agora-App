import 'package:agora/GroupView.dart';
import 'package:agora/Notifications.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CustomAppBar.dart';
import 'package:agora/widgets/Main_widgets/FollowRequest.dart';
import 'package:agora/widgets/Main_widgets/GroupsUi.dart';
import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<Map<String, dynamic>> groups = [
    {
      "groupImage": "assets/images/image 10.png",
      "name": "Flutter Development",
      "members": 234,
      "postsPerDay": 12,
      "mutualFriends": 23,
    },
    {
      "groupImage": "assets/images/image 7.png",
      "name": "UI/UX Designers",
      "members": 180,
      "postsPerDay": 8,
      "mutualFriends": 15,
    },
    {
      "groupImage": "assets/images/follow images/img_1.png",
      "name": "Full Stack Devs",
      "members": 320,
      "postsPerDay": 14,
      "mutualFriends": 29,
    },
  ];
  List<Map<String, dynamic>> groupsNearby = [
    {
      "groupImage": "assets/images/Homepage images/uiUX.png",
      "name": "UI/UX Designers",
      "members": 234,
      "postsPerDay": 12,
      "mutualFriends": 23,
    },
    {
      "groupImage": "assets/images/Homepage images/computer.jpg",
      "name": "Software Company",
      "members": 534,
      "postsPerDay": 30,
      "mutualFriends": 123,
    }
  ];
  List<Map<String, dynamic>> eventsNearby = [
    {
      "groupImage": "assets/images/follow images/unknown profile.jpg",
      "name": "Fitness",
      "members": 234,
      "postsPerDay": 12,
      "mutualFriends": 23,
    },
    {
      "groupImage": "assets/images/Homepage images/computer.jpg",
      "name": "Programmers meetup",
      "members": 534,
      "postsPerDay": 30,
      "mutualFriends": 123,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Agora",
        actionIcon: Icons.add,
        onActionPressed: () {},
        onNotificationPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Notifications()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: SizedBox(
                        height: 40,
                        width: 260,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                            prefixIcon:
                                Icon(Icons.search_sharp, color: Colors.grey),
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: "Search names, locations, tags, groups",
                            hintStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 20),
                    child: Container(
                      height: 40,
                      width: 44,
                      decoration: BoxDecoration(
                        color: SColors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon:
                            Icon(Icons.vertical_distribute, color: SColors.primary),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "People near you",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 15),
              FollowRequest(
                name: "Ihsan Khan",
                username: "@sadiqali",
                bio: "UI designer with one month of experience at Section Soft",
                profileImage: "assets/images/follow images/person1.png",
                onPressed: () {},
              ),
              SizedBox(height: 13),
              FollowRequest(
                name: "Muhammad Ali",
                username: "@sadistic",
                bio: "Web developer specializing in design and implementation",
                profileImage: "assets/images/follow images/person2.png",
                onPressed: () {},
              ),
              SizedBox(height: 13),
              FollowRequest(name: "Fawad"),
              SizedBox(height: 13),
              FollowRequest(name: "Sami"),
              SizedBox(height: 15),
              SizedBox(
                width: 94,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: SColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.blue),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    "Load more",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: SColors.black, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "My Groups",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: SColors.info),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GroupView()));
                  },
                  child: GroupsUi(groups: groups)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Groups Nearby",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: SColors.info),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              GroupsUi(groups: groupsNearby),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Events Nearby",
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "See all",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              GroupsUi(groups: eventsNearby),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Popular Social Spots Nearby",
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "See all",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: SColors.info),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 15),
              SpotsNearby(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Text(
                  "GREET locations",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Geographical Real-world Exploration Engagement Tool",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Connect with new or familiar people from popular places."
                            "Don't see a location? Add it in your profile's Greets tab",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4), // Spacing between the lines
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  "assets/images/map.png",
                  width: 310,
                  height: 421,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
