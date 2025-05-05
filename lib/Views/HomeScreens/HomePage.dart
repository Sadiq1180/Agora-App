import 'package:agora/Notifications.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CustomAppBar.dart';
import 'package:agora/widgets/Main_widgets/PostUi.dart';
import 'package:flutter/material.dart';
import 'Create Events/EventDetails.dart';
import 'CreatePoll/CreatePoll.dart';
import 'CreatePost/CreatePost.dart';

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
        onActionPressed: () {
          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(
              MediaQuery.of(context).size.width - 70,
              kToolbarHeight,
              80,
              0,
            ),
            items: [
              PopupMenuItem(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatePost()),
                  );
                },
                value: 'Post',
                child: Text('Post'),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatePoll()),
                  );
                },
                value: 'Poll',
                child: Text('Poll'),
              ),
              PopupMenuItem(
                value: 'Groups',
                child: Text('Groups'),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventDetails()),
                  );
                },
                value: 'Events',
                child: Text('Events'),
              ),
            ],
          ).then(
            (value) {
              if (value != null) {
              }
            },
          );
        },
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
              border: Border.all(color: SColors.black.withOpacity(0.4), width: 2),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: SColors.white,
              backgroundImage: isAddStory ? null : AssetImage(image!),
              child: isAddStory
                  ? Icon(Icons.add, size: 30, color: SColors.black)
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