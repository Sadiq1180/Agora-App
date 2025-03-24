import 'package:agora/widgets/CircularAvatar.dart';
import 'package:agora/widgets/TabBarImages.dart';
import 'package:agora/widgets/TabItem.dart';
import 'package:flutter/material.dart';

import '../../Greets.dart';

class MainProfileEdit extends StatefulWidget {
  // final String userName;
  // final String userImage;
  // final String userDescription;

  const MainProfileEdit({
    super.key,
    // required this.userName,
    // required this.userImage,
    // required this.userDescription,
  });

  @override
  State<MainProfileEdit> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<MainProfileEdit>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController1 = TabController(length: 5, vsync: this);
    TabController tabController2 = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 314,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 48),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     CircularAvatar(
                    //       size: 45,
                    //       image: widget.userImage,
                    //     ),
                    //     const SizedBox(width: 12),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           widget.userName,
                    //           style: const TextStyle(
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w500,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //         Text(
                    //           widget.userDescription,
                    //           style: const TextStyle(
                    //             fontSize: 12,
                    //             color: Colors.white70,
                    //           ),
                    //         ),
                    //         const SizedBox(height: 10),
                    //         Container(
                    //           width: 200,
                    //           height: 35,
                    //           padding: const EdgeInsets.symmetric(
                    //               horizontal: 8, vertical: 5),
                    //           decoration: BoxDecoration(
                    //             color: Colors.white.withOpacity(0.2),
                    //             borderRadius: BorderRadius.circular(15),
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //             MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               _followers("2.5k", "Foll."),
                    //               _followers("1.2k", "Frnds."),
                    //               _followers("512", "Follow."),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
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
                      title: 'Greets' ,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Greets()));
                      },
                    ),
                    TabItem(
                      title: 'Groups',
                    ),
                    TabItem(
                      title: 'Events',
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Interests",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("New Tech"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Farmer.ai"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Programming"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Python"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Learning"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Business"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child:
                      Text("+6 More", style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                ),
              ],
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
              child: TabBarView(
                  controller: tabController2, children: [
                TabBarImages(),
                TabBarImages(),
                TabBarImages(),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 150.0),
              child: Text(
                "People with same interests",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 179,
                      width: 142,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 10),
                            child: CircularAvatar(
                                size: 40,
                                image: "assets/images/follow images/3.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Aygon Targarian",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 19),
                    Container(
                      height: 179,
                      width: 142,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 10),
                            child: CircularAvatar(
                                size: 40,
                                image: "assets/images/follow images/4.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Steve Rogers",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 19),
                    Container(
                      height: 179,
                      width: 142,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 10),
                            child: CircularAvatar(
                                size: 40,
                                image: "assets/images/follow images/5.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Alexandar",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
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
