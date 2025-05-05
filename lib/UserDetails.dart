import 'package:agora/ProfileSetting.dart';
import 'package:agora/Views/Edit%20Profile/Add%20Group/Location.dart';
import 'package:agora/Views/Edit%20Profile/Analytics.dart';
import 'package:agora/Views/Edit%20Profile/EditProfile.dart';
import 'package:agora/Views/TabBar%20View/Prompts.dart';
import 'package:agora/Views/TabBar%20View/TabBarEvents.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:agora/widgets/Main_widgets/GroupsUi.dart';
import 'package:agora/widgets/Main_widgets/TabBarImages.dart';
import 'package:agora/widgets/Main_widgets/TabItem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'Greets.dart';

class UserDetails extends StatefulWidget {
  final String userName;
  final String userImage;
  final String userDescription;
  const UserDetails({
    super.key,
    required this.userName,
    required this.userImage,
    this.userDescription = '',
  });

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController1 = TabController(length: 5, vsync: this);
    TabController tabController2 = TabController(length: 3, vsync: this);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 8),
          child: Container(
            width: 29,
            height: 29,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white),
            ),
            child: Center(
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new,
                    size: 18, color: Colors.white),
                splashRadius: 20,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Location()));},
              child: SvgPicture.asset("assets/images/Svg/add.svg")),
          SizedBox(width: 2),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileSetting()));
                },
                child: SvgPicture.asset("assets/images/Svg/setting-2.svg")),
          ),
          SizedBox(width: 8),
          Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Analytics()));
                  },
                  child: SvgPicture.asset("assets/images/Svg/activity.svg"))),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircularAvatar(
                              size: 45,
                              image: widget.userImage,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfile()));
                                  },
                                  child: SvgPicture.asset(
                                    "assets/images/Svg/edit.svg",
                                    width: 20,
                                    height: 15,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.userName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              widget.userDescription,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 200,
                              height: 35,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _followers("2.5k", "Foll."),
                                  _followers("1.2k", "Frnds."),
                                  _followers("512", "Follow."),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Landed on 12 December",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Text(
                          "Upcoming Programmer",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Text(
                          "Python Developer",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Text(
                          "#coding #python #Artificialintelligence",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            DefaultTabController(
              length: 5,
              child: TabBar(
                controller: tabController1,
                labelPadding: EdgeInsets.symmetric(horizontal: 7),
                indicatorColor: Colors.lightBlueAccent,
                labelColor: Colors.lightBlueAccent,
                unselectedLabelColor: Colors.black38,
                tabs: [
                  TabItem(
                    title: 'Abouts',
                  ),
                  TabItem(
                    title: 'Prompts',
                  ),
                  TabItem(
                    title: 'Greets',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Greets()));
                    },
                  ),
                  TabItem(
                    title: 'Groups',
                  ),
                  TabItem(
                    title: 'Events',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400, // Adjust height as needed
              child: TabBarView(
                controller: tabController1,
                children: [
                  TabBarImages(),
                  Prompts(),
                  Greets(), // If Greets is a screen
                  GroupsUi(
                    groups: [
                      {
                        "groupImage": "assets/images/image 10.png",
                        "name": "Flutter Development",
                        "members": 234,
                        "postsPerDay": 12,
                        "mutualFriends": 23,
                      },
                      {
                        "groupImage": "assets/images/image 10.png",
                        "name": "Flutter Development",
                        "members": 234,
                        "postsPerDay": 12,
                        "mutualFriends": 23,
                      },
                      {
                        "groupImage": "assets/images/image 10.png",
                        "name": "Flutter Development",
                        "members": 234,
                        "postsPerDay": 12,
                        "mutualFriends": 23,
                      },
                    ],
                  ), // Replace with the Groups widget
                  TabBarEvents(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                  controller: tabController2,
                  labelPadding: EdgeInsets.symmetric(horizontal: 7),
                  indicatorColor: Colors.lightBlueAccent,
                  labelColor: Colors.lightBlueAccent,
                  unselectedLabelColor: Colors.black38,
                  tabs: [
                    TabItem(
                      title: 'Photos',
                    ),
                    TabItem(
                      title: 'Videos',
                    ),
                    TabItem(
                      title: 'Posts',
                    ),
                  ]),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: TabBarView(controller: tabController2, children: [
                TabBarImages(),
                TabBarImages(),
                TabBarImages(),
              ]),
            ),
            // ////interests
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, top: 10),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Interests",
            //       style: TextStyle(
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ),
            // ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 20, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child: Text("New Tech"),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 5, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child: Text("Farmer.ai"),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 5, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child: Text("Programming"),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 20, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child: Text("Python"),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 5, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child: Text("Learning"),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 5, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child: Text("Business"),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 20, top: 10),
            //       child: Container(
            //         height: 30,
            //         width: 90,
            //         decoration: BoxDecoration(
            //           color: Colors.grey[200],
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         child: Center(
            //           child:
            //           Text("+6 More", style: TextStyle(color: Colors.blue)),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
            //people with same interests
            // Padding(
            //   padding: EdgeInsets.only(right: 150.0),
            //   child: Text(
            //     "People with same interests",
            //     style: TextStyle(
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500,
            //         color: Colors.black),
            //   ),
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 20.0, top: 10),
            //     child: Row(
            //       children: [
            //         Container(
            //           height: 179,
            //           width: 142,
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           child: Column(
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.only(top: 10),
            //                 child: CircularAvatar(
            //                     size: 40,
            //                     image: "assets/images/follow images/3.png"),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Aygon Targarian",
            //                 style: TextStyle(
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w500,
            //                     color: Colors.black),
            //               ),
            //               ElevatedButton(
            //                   style: ElevatedButton.styleFrom(
            //                     backgroundColor: Colors.lightBlueAccent,
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(20),
            //                     ),
            //                     padding: const EdgeInsets.symmetric(
            //                         horizontal: 16, vertical: 8),
            //                   ),
            //                   onPressed: () {},
            //                   child: Text(
            //                     "Follow",
            //                     style: TextStyle(color: Colors.white),
            //                   )),
            //             ],
            //           ).centered(),
            //         ),
            //         SizedBox(width: 19),
            //         Container(
            //           height: 179,
            //           width: 142,
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           child: Column(
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.only(top: 10),
            //                 child: CircularAvatar(
            //                     size: 40,
            //                     image: "assets/images/follow images/4.png"),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Steve Rogers",
            //                 style: TextStyle(
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w500,
            //                     color: Colors.black),
            //               ),
            //               ElevatedButton(
            //                   style: ElevatedButton.styleFrom(
            //                     backgroundColor: Colors.lightBlueAccent,
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(20),
            //                     ),
            //                     padding: const EdgeInsets.symmetric(
            //                         horizontal: 16, vertical: 8),
            //                   ),
            //                   onPressed: () {},
            //                   child: Text(
            //                     "Follow",
            //                     style: TextStyle(color: Colors.white),
            //                   )),
            //             ],
            //           ).centered(),
            //         ),
            //         SizedBox(width: 19),
            //         Container(
            //           height: 179,
            //           width: 142,
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           child: Column(
            //             children: [
            //               Padding(
            //                 padding: EdgeInsets.only(top: 10),
            //                 child: CircularAvatar(
            //                     size: 40,
            //                     image: "assets/images/follow images/5.png"),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Alexandar",
            //                 style: TextStyle(
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w500,
            //                     color: Colors.black),
            //               ),
            //               ElevatedButton(
            //                   style: ElevatedButton.styleFrom(
            //                     backgroundColor: Colors.lightBlueAccent,
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(20),
            //                     ),
            //                     padding: const EdgeInsets.symmetric(
            //                         horizontal: 16, vertical: 8),
            //                   ),
            //                   onPressed: () {},
            //                   child: Text(
            //                     "Follow",
            //                     style: TextStyle(color: Colors.white),
            //                   )),
            //             ],
            //           ).centered(),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 120,
            // ),
          ],
        ),
      ),
    );
  }

  Widget _followers(String number, String label) {
    return Row(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

extension on Widget {
  Widget centered() {
    return Center(
      child: this,
    );
  }

  Widget padded(EdgeInsets padding) {
    return Padding(padding: padding, child: this);
  }
}
