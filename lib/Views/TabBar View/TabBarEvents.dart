import 'package:agora/widgets/GroupsUi.dart';
import 'package:flutter/material.dart';

class TabBarEvents extends StatefulWidget {
  const TabBarEvents({super.key});

  @override
  State<TabBarEvents> createState() => _TabBarEventsState();

}
class _TabBarEventsState extends State<TabBarEvents> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GroupsUi(groups: groupsNearby),

        ],
      ),
    );
  }
}
class SpotsNearby extends StatelessWidget {
  SpotsNearby({super.key});

  final List<Map<String, String>> spots = [
    {
      "image": "assets/images/Homepage images/Rectangle 42.png",
      "name": "Khalid Copy Shop",
      "address": "Bakers Street, Shop 102, San Francisco"
    },
    {
      "image": "assets/images/follow images/img_1.png",
      "name": "Magic Body Building",
      "address": "Islamabad Pakistan"
    },
    {
      "image": "assets/images/image 10.png",
      "name": "Magic Body Building",
      "address": "Islamabad Pakistan"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 189,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: spots.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 139,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(10),
                    top: Radius.circular(10),
                  ),
                  child: Image.asset(
                    spots[index]["image"]!,
                    height: 95,
                    width: 127,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 45, top: 5),
                  child: Text(
                    spots[index]["name"]!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 45, top: 5),
                  child: Text(
                    spots[index]["address"]!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 33,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      )
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
