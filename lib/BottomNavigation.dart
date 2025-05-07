import 'package:agora/Views/HomeScreens/Chats.dart';
import 'package:agora/Discover.dart';
import 'package:agora/UserDetails.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:flutter/material.dart';

import 'Views/HomeScreens/HomePage.dart';

class BottomNavigation extends StatefulWidget {
  static const String routeName = 'BottomNavigation';
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final PageController pageController = PageController(initialPage: 0);

  int myIndex = 0;
  List<Widget> pages = [
    HomePage(),
    Discover(),
    Chats(),
  UserDetails(
    userName: 'Muhammad Ali',
    userImage: SImages.followImageAli,
    userDescription: '@Ali',
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          //on tap to change the screen
          onTap: (index) => setState(() => myIndex = index),
          currentIndex: myIndex,

          // change color on click
          backgroundColor: SColors.white,
          unselectedItemColor: SColors.black.withOpacity(0.5),
          selectedItemColor: SColors.info,
          type: BottomNavigationBarType.fixed,
          iconSize: 24,

          // unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
          // selectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.blueAccent,
                icon: Icon(
                  myIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: myIndex == 0 ? SColors.info : SColors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                myIndex == 1 ? Icons.search : Icons.search_sharp,
                color: myIndex == 1 ? SColors.info : SColors.black,
              ),
              label: "Discover",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  myIndex == 2 ? Icons.chat : Icons.chat_outlined,
                  color: myIndex == 2 ? SColors.info : SColors.black,
                ),
                label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(
                  myIndex == 3 ? Icons.person : Icons.person_outline,
                  color: myIndex == 3 ? SColors.info : SColors.black,
                ),
                label: "Profile"),
          ]),
    );
  }
}
