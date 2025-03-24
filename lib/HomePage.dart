import 'package:agora/Notifications.dart';
import 'package:agora/widgets/CustomAppBar.dart';
import 'package:agora/widgets/PostUi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Custom App Bar
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
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 7),
        child: Column(
          children: [
            //  Stories Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _storyAvatar(isAddStory: true, label: "Your story"),
                  _storyAvatar(
                      image: 'assets/images/Homepage images/Oval2.png',
                      label: "Ahmad Ali"),
                  _storyAvatar(
                      image: 'assets/images/image 7.png', label: "Khan"),
                  _storyAvatar(
                      image: 'assets/images/follow images/person2.png',
                      label: "Muhammad"),
                  _storyAvatar(
                      image: 'assets/images/google logo.png', label: "Ali"),
                  _storyAvatar(
                      image: 'assets/images/Homepage images/Oval.png',
                      label: "Javed"),
                  _storyAvatar(
                      image: 'assets/images/apple logo.png', label: "Zafar"),
                ],
              ),
            ),
            SizedBox(height: 10),

            //  Post UI
            PostUi(
              profileImage: 'assets/images/Homepage images/Oval2.png',
              username: 'Mustafa',
              location: 'Islamabad,Pakistan',
              postText: 'Feeling good today with Ahmad & Ali',
              postImage: 'assets/images/Homepage images/Rectangle 42.png',
              likes: 112,
              comments: 200,
              withPerson: 'Asif & Kabir',
            ),
            SizedBox(
              height: 30,
            ),
            PostUi(
              profileImage: 'assets/images/follow images/person1.png',
              username: 'Ahmad Ali',
              withPerson: 'Umar',
              location: 'Charsadda',
              postText: 'Kabir & Sami',
              postImage: 'assets/images/Banners.png',
              likes: 112,
              comments: 200,
            ),
            SizedBox(
              height: 30,
            ),
            PostUi(
              profileImage: 'assets/images/google logo.png',
              username: 'Mustafa',
              withPerson: 'Shabir',
              location: 'Mardan',
              postText: 'Feeling good today',
              postImage: 'assets/images/image 10.png',
              likes: 112,
              comments: 200,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            PostUi(
              profileImage: 'assets/images/follow images/person1.png',
              username: 'Ahmad Ali',
              withPerson: 'Umar',
              location: 'Charsadda',
              postText: 'Kabir & Sami',
              postImage: 'assets/images/Banners.png',
              likes: 312,
              comments: 500,
            ),
          ],
        ),
      ),
    );
  }

  // Story Avatar
  Widget _storyAvatar(
      {String? image, String label = "", bool isAddStory = false}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black12, width: 2),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              backgroundImage: isAddStory ? null : AssetImage(image!),
              child: isAddStory
                  ? Icon(Icons.add, size: 30, color: Colors.black)
                  : null,
            ),
          ),
          Text(label,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
