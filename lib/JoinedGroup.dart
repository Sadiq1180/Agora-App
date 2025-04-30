import 'package:agora/Admin%20List/AdminsView.dart';
import 'package:agora/widgets/CircularAvatar.dart';
import 'package:agora/widgets/GroupsMainContainer.dart';
import 'package:flutter/material.dart';

class JoinedGroup extends StatefulWidget {
  const JoinedGroup({super.key});

  @override
  State<JoinedGroup> createState() => _GroupViewState();
}

class _GroupViewState extends State<JoinedGroup> {
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
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  AdminView()));
                    },
                    child: GroupsMainContainer(
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
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  // First Discussion Container
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => UserDetails(
                  //           userName: "Ahmad Ali",
                  //           userImage: "assets/images/follow images/Ahmad.png",
                  //           userDescription: "@Ahmad",
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   child: discussionContainer(
                  //       "Ahmad Ali", "assets/images/follow images/Ahmad.png"),
                  // ),
                  // // Second Discussion Container
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => UserDetails(
                  //           userName: "Abdullah Khan",
                  //           userImage:
                  //               "assets/images/follow images/Abdullah.png",
                  //           userDescription: "@Abdullah",
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   child: discussionContainer("Abdullah Khan",
                  //       "assets/images/follow images/Abdullah.png"),
                  // ),
                  // // Third Discussion Container
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => UserDetails(
                  //           userName: "Ali Khan",
                  //           userImage: "assets/images/follow images/Ali.png",
                  //           userDescription: "@Ali khan",
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   child: discussionContainer(
                  //       "Ali Khan", "assets/images/follow images/Ali.png"),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Highlights",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(width: 210),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Avatar and Name
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/follow images/Abdullah.png"),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Abdullah",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Location
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 18),
                                  SizedBox(width: 5),
                                  Text(
                                    "Karachi, Pakistan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Post Text
                              Text(
                                "Excited for this amazing event",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 10),

                              // Image Container
                              Container(
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Event Images/event.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Avatar and Name
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/follow images/Ahmad.png"),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Ahmad",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Location
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 18),
                                  SizedBox(width: 5),
                                  Text(
                                    "Islamabad, Pakistan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Post Text
                              Text(
                                "Excited for this amazing event",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 10),

                              // Image Container
                              Container(
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Banners.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Avatar and Name
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/follow images/Abdullah.png"),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Abdullah",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Location
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 18),
                                  SizedBox(width: 5),
                                  Text(
                                    "Karachi, Pakistan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Post Text
                              Text(
                                "Excited for this amazing event",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 10),

                              // Image Container
                              Container(
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Event Images/event.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Avatar and Name
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/follow images/Ahmad.png"),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Ahmad",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Location
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 18),
                                  SizedBox(width: 5),
                                  Text(
                                    "Islamabad, Pakistan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),

                              // Post Text
                              Text(
                                "Excited for this amazing event",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 10),

                              // Image Container
                              Container(
                                width: 200,
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Banners.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget discussionContainer(String name, String image) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
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
              image: image,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
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
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
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
    );
  }
}
