import 'package:agora/Chats.dart';
import 'package:agora/Discover.dart';
import 'package:agora/Follow.dart';
import 'package:agora/HomePage.dart';
import 'package:agora/ProfileSetting.dart';
import 'package:agora/UserDetails.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
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
    userImage: 'assets/images/follow images/Ali.png',
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
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,

          // unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
          // selectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.blueAccent,
                icon: Icon(
                  myIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: myIndex == 0 ? Colors.blue : Colors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                myIndex == 1 ? Icons.search : Icons.search_sharp,
                color: myIndex == 1 ? Colors.blue : Colors.black,
              ),
              label: "Discover",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  myIndex == 2 ? Icons.chat : Icons.chat_outlined,
                  color: myIndex == 2 ? Colors.blue : Colors.black,
                ),
                label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(
                  myIndex == 3 ? Icons.person : Icons.person_outline,
                  color: myIndex == 3 ? Colors.blue : Colors.black,
                ),
                label: "Profile"),
          ]),
    );
  }
}
