import 'package:flutter/material.dart';

class PostHeaderSection extends StatelessWidget {
  final String profileImage;
  final String username;
  final String withPerson;
  final String location;
  final VoidCallback? onElevatedButtonPressed;
  final bool showMoreVertIcon;

  const PostHeaderSection({
    super.key,
    required this.profileImage,
    required this.username,
    required this.withPerson,
    required this.location,
    this.onElevatedButtonPressed,
    this.showMoreVertIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(profileImage),
        ),
        SizedBox(width: 7),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    "is with",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 2),
                  if (onElevatedButtonPressed != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 5),
                      child: ElevatedButton(
                        onPressed: onElevatedButtonPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        child: Text("Follow"),
                      ),
                    ),
                  SizedBox(width: 2),
                  Text(
                    withPerson,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 12),
                  SizedBox(width: 4),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        if (showMoreVertIcon)
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
      ],
    );
  }
}