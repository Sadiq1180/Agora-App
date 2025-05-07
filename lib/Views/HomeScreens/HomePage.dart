import 'package:agora/Notifications.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/CustomAppBar.dart';
import 'package:agora/widgets/Main_widgets/PostUi.dart';
import 'package:flutter/material.dart';
import 'Create Events/EventDetails.dart';
import 'CreatePoll/CreatePoll.dart';
import 'CreatePost/CreatePost.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'CreatePost';
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
                onTap: () {
                      Navigator.pushNamed(context,CreatePost.routeName);
                },
                value: 'Post',
                child: Text('Post'),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.pushNamed(context, CreatePoll.routeName);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CreatePoll()),
                  // );
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
                  Navigator.pushNamed(context, EventDetails.routeName);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => EventDetails()),
                  // );
                },
                value: 'Events',
                child: Text('Events'),
              ),
            ],
          ).then(
            (value) {
              if (value != null) {}
            },
          );
        },
        onNotificationPressed: () {
          Navigator.pushNamed(context, Notifications.routeName);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Notifications()),
          // );
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
                  _storyAvatar(image: SImages.storyImage1, label: "Ahmad Ali"),
                  _storyAvatar(image: SImages.storyImage2, label: "Khan"),
                  _storyAvatar(image: SImages.person2, label: "Muhammad"),
                  _storyAvatar(image: SImages.googleLogo, label: "Ali"),
                  _storyAvatar(image: SImages.storyImage2, label: "Javed"),
                  _storyAvatar(image: SImages.appleLogo, label: "Zafar"),
                ],
              ),
            ),
            SizedBox(height: 10),

            //  Post UI
            PostUi(
              profileImage: SImages.person2,
              username: 'Mustafa',
              location: 'Islamabad,Pakistan',
              postText: 'Feeling good today with Ahmad & Ali',
              postImage: SImages.postImage1,
              likes: 112,
              comments: 200,
              withPerson: 'Asif & Kabir',
            ),
            SizedBox(
              height: 30,
            ),
            PostUi(
              profileImage: SImages.person1,
              username: 'Ahmad Ali',
              withPerson: 'Umar',
              location: 'Charsadda',
              postText: 'Kabir & Sami',
              postImage: SImages.postImage2,
              likes: 112,
              comments: 200,
            ),
            SizedBox(
              height: 30,
            ),
            PostUi(
              profileImage: SImages.googleLogo,
              username: 'Mustafa',
              withPerson: 'Shabir',
              location: 'Mardan',
              postText: 'Feeling good today',
              postImage: SImages.postImage1,
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
              profileImage: SImages.person1,
              username: 'Ahmad Ali',
              withPerson: 'Umar',
              location: 'Charsadda',
              postText: 'Kabir & Sami',
              postImage: SImages.bannersImage,
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
              border:
                  Border.all(color: SColors.black.withOpacity(0.4), width: 2),
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
