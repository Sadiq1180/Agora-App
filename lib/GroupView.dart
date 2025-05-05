
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:agora/widgets/Main_widgets/GroupsMainContainer.dart';
import 'package:agora/widgets/Main_widgets/PostUi.dart';
import 'package:flutter/material.dart';

import 'JoinedGroup.dart';

class GroupView extends StatefulWidget {
  const GroupView({super.key});

  @override
  State<GroupView> createState() => _GroupViewState();
}

class _GroupViewState extends State<GroupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  GroupsMainContainer(
                    image: 'assets/images/Event Images/event.png',
                    title: "Asif Wedding Program",
                    description:
                        "So Guys here I have created this group and we will discuss things here."
                        " So every Plan will be discussed here and then executed by the mentioned person."
                        " Things will be shared here, or else I will expel him from this group. Be professional and be humble to everyone.",
                    location: "Karachi, Pakistan. Private Group",
                    membersCount: 100,
                    admins: [
                      "assets/images/follow images/Abdullah.png",
                      "assets/images/follow images/Ahmad.png",
                      "assets/images/follow images/Ali.png"
                    ],
                    members: [
                      "assets/images/follow images/img_1.png",
                      "assets/images/follow images/img.png",
                      "assets/images/follow images/person1.png",
                      "assets/images/follow images/person1.png",
                      "assets/images/follow images/person1.png",
                      "assets/images/follow images/person1.png",
                    ],
                  ),

                  SizedBox(height: 120), // Adjusted spacing
                  // Join Group Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(320, 50),
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Group Joined")),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JoinedGroup(), // Navigate to JoinedGroup screen
                        ),
                      );
                    },
                    child: Text(
                      "Join Group",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  // Discussions Title
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Discussions",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircularAvatar(size: 25),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                border: InputBorder.none,
                                hintText: "Write a new Discussion",
                                hintStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // First Discussion Container
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularAvatar(
                            size: 20,
                            image: "assets/images/follow images/Ahmad.png",
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Ahmad ali",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "3 days ago",
                                      style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Lorem ipsum dolor sit amet consectetur. Dui eu ult rices placer portion imper diet"
                                  " sed modernism consectetur facility. Aliquot vitae ult rices gravid ornate mass null "
                                  "amputate. Habitat in faucets perambulator dalesman biennium. Deque protein et lorem nec sit",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Second Discussion Container
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularAvatar(
                            size: 20,
                            image: "assets/images/follow images/Abdullah.png",
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Abdullah Khan",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "3 days ago",
                                      style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Lorem ipsum dolor sit amet consectetur. Dui eu ult rices placer portion imper diet"
                                  " sed modernism consectetur facility. Aliquot vitae ult rices gravid ornate mass null "
                                  "amputate. Habitant in faucets perambulator dalesman biennium. Deque protein et lorem nec sit",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Third Discussion container
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircularAvatar(
                            size: 20,
                            image: "assets/images/follow images/Ali.png",
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Abdullah Khan",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "3 days ago",
                                      style: TextStyle(
                                          fontSize: 6,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Lorem ipsum dolor sit amet consectetur. Dui eu ult rices placer portion imper diet"
                                  " sed modernism consectetur facility. Aliquot vitae ult rices gravid ornate mass null "
                                  "amputate. Habitant in faucets perambulator dalesman biennium. Deque protein et lorem nec sit",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Text(
                          "Highlights",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: SColors.lightBlue),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PostUi(
                        postImageHeight: 150,
                        postImageWidth: 150,
                        showCommentBox: false,
                        profileImage:
                            "assets/images/follow images/Abdullah.png",
                        username: "Ahmad ali",
                        withPerson: "Muhammad",
                        location: "Karachi, Pakistan",
                        postText: "feeling good today",
                        postImage: "assets/images/follow images/img_1.png",
                        likes: 20,
                        comments: 50),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
