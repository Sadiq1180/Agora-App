import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/PostUi.dart';
import 'package:agora/widgets/VisitorsAvatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySaved extends StatefulWidget {
  const MySaved({super.key});

  @override
  State<MySaved> createState() => _MySavedState();
}

class _MySavedState extends State<MySaved> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController3 = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBarCustom(title: 'My Saved'),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: TabBar(
              indicatorColor: Colors.lightBlueAccent,
              labelColor: Colors.lightBlueAccent,
              unselectedLabelColor: Colors.black38,
              controller: tabController3,
              tabs: [
                Tab(
                  text: 'Posts',
                ),
                Tab(
                  text: 'Events',
                ),
              ],
            ),

          ),
          Expanded(
            child: TabBarView(
              controller: tabController3,
              children: [
                // Posts Tab
                PostUi(
                  postImage: "assets/images/Gallery2.png",
                  profileImage: 'assets/images/follow images/Abdullah.png',
                  username: 'John Snow',
                  withPerson: '',
                  location: 'San Francisco, USA',
                  postText: 'Had a very amazing dinner with Alif & Khalid',
                  likes: 234,
                  comments: 234,
                  showCommentBox: false,
                  onElevatedButtonPressed: () {},
                  showMoreVertIcon: false,
                ),

                // Events Tab
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // First Event Container
                      Container(
                        width: 300,
                        padding: EdgeInsets.only(left: 20,right: 20),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/Event Images/event2.png',
                                height: 184,
                                 fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Islamabad Music Concert',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Islamabad,Pakistan',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Thu 24 Nov, 2023 05:00 pm',
                                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                              ),
                            ),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                VisitorsAvatar(title: 'Participants',titleStyle: TextStyle(fontSize: 7, fontWeight: FontWeight.w500),
                                    avatars: [
                                      "assets/images/follow images/Ali.png",
                                      "assets/images/follow images/Abdullah.png",
                                      "assets/images/follow images/Ahmad.png",
                                      "assets/images/follow images/UiUx2.png",
                                      "assets/images/follow images/Ali.png",
                                      "assets/images/follow images/Abdullah.png",
                                      "assets/images/follow images/Ahmad.png",
                                      "assets/images/follow images/UiUx2.png",
                                    ]
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0,left: 20),
                                  child: SvgPicture.asset(
                                    'assets/images/Svg/Vector.svg',
                                  ),
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0,left: 10),
                                  child: SvgPicture.asset(
                                    'assets/images/Svg/Vector1.svg',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Second Event Container
                      Container(
                        width: 300,
                        padding: EdgeInsets.only(left: 20,right: 20),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/Event Images/event3.png',
                                height: 184,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Programmers Meetup',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Karachi,Pakistan',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                              ),
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Thu 24 Nov, 2023 05:00 pm',
                                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                VisitorsAvatar(title: 'Participants',titleStyle: TextStyle(fontSize: 7, fontWeight: FontWeight.w500),
                                    avatars: [
                                      "assets/images/follow images/Ali.png",
                                      "assets/images/follow images/Abdullah.png",
                                      "assets/images/follow images/Ahmad.png",
                                      "assets/images/follow images/UiUx2.png",
                                      "assets/images/follow images/Ali.png",
                                      "assets/images/follow images/Abdullah.png",
                                      "assets/images/follow images/Ahmad.png",
                                      "assets/images/follow images/UiUx2.png",
                                    ]
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0,left: 20),
                                  child: SvgPicture.asset(
                                    'assets/images/Svg/Vector.svg',
                                  ),
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0,left: 10),
                                  child: SvgPicture.asset(
                                    'assets/images/Svg/Vector1.svg',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),

        ],
      ),
    );
  }
}
