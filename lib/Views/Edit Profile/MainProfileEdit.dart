import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:agora/widgets/Main_widgets/TabBarImages.dart';
import 'package:agora/widgets/Main_widgets/TabItem.dart';
import 'package:agora/widgets/Main_widgets/interests_custom.dart';
import 'package:agora/widgets/Main_widgets/main_profile_widget.dart';
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
            MainProfileCustomWidgett(),
            const SizedBox(height: 20),
            DefaultTabController(
              length: 5,
              child: TabBar(
                  controller: tabController1,
                  labelPadding: EdgeInsets.symmetric(horizontal: 7),
                  indicatorColor: SColors.lightBlueAccent,
                  labelColor: SColors.lightBlueAccent,
                  unselectedLabelColor: SColors.black.withOpacity(0.4),
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
            InterestsCustomWidget(),
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
                  unselectedLabelColor: SColors.black.withOpacity(0.4),
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
                    color: SColors.black),
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
                        color: SColors.white,
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
                                color: SColors.black),
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
                                style: TextStyle(color: SColors.white),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 19),
                    Container(
                      height: 179,
                      width: 142,
                      decoration: BoxDecoration(
                        color: SColors.white,
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
                                color: SColors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: SColors.lightBlueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: SColors.white),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(width: 19),
                    Container(
                      height: 179,
                      width: 142,
                      decoration: BoxDecoration(
                        color: SColors.white,
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
                                color: SColors.black),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: SColors.lightBlueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: SColors.white),
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
            color: SColors.white,
          ),
        ),
        SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: SColors.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}