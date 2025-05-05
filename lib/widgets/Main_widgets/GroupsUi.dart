import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GroupsUi extends StatelessWidget {
  final List<Map<String, dynamic>> groups;

  const GroupsUi({
    super.key,
    required this.groups,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: groups.length,
            itemBuilder: (BuildContext context, int index) {
              final group = groups[index];
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: 213,
                decoration: BoxDecoration(
                  color: SColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        group["groupImage"],
                        height: 117,
                        width: 230,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 2),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        group["name"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: Text(
                        "${group["members"]} Members",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: Text(
                        "${group["postsPerDay"]} Posts a day",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.logout, color: Colors.black, size: 20),
                          SizedBox(width: 10),
                          Icon(Icons.bookmark_outline_rounded,
                              color: Colors.black, size: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
/////////////////Popular spots nearby//////////

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
