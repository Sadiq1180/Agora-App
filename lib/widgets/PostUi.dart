import 'package:flutter/material.dart';

class PostUi extends StatelessWidget {
  final String profileImage;
  final bool showCommentBox;
  final String username;
  final String withPerson;
  final String location;
  final String postText;
  final String postImage;
  final int likes;
  final int comments;
  final double? postImageHeight;
  final double? postImageWidth;
  final VoidCallback? onElevatedButtonPressed;
  final bool showMoreVertIcon;

  const PostUi({
    super.key,
    required this.profileImage,
    required this.username,
    required this.withPerson,
    required this.location,
    required this.postText,
    required this.postImage,
    required this.likes,
    required this.comments,
    this.postImageHeight,
    this.postImageWidth,
    this.showCommentBox=true,
    this.onElevatedButtonPressed,
    this.showMoreVertIcon=true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Info
          Row(
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
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 2),
                        Text(
                          "is with",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 2),
                         if (onElevatedButtonPressed != null)
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0,top: 5),
                            child: ElevatedButton(
                                onPressed: onElevatedButtonPressed,
                                child: Text("Follow"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlueAccent)),
                          ),
                        SizedBox(width: 2),
                        Text(
                          withPerson,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 12),
                        SizedBox(width: 4),
                        Text(
                          location, // This remains 'location' for the actual location
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                      ],
                    )
                  ],
                ),
              ),
               if(showMoreVertIcon)
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),

            ],
          ),

          SizedBox(height: 5),

          // Post Text
          Text(postText),
          SizedBox(height: 10),

          // Post Image
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Container(
              width: postImageWidth ?? double.infinity,
              height: postImageHeight ?? 367,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  postImage,
                  height: postImageHeight ?? 367,
                  width: postImageWidth ?? double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(height: 5),

          // Post Actions
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Liked!')),
                    );
                  },
                  icon:
                      Icon(Icons.favorite_outlined, color: Colors.blueAccent)),
              Text("$likes"),
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You cannot comment")),
                    );
                  },
                  icon: Icon(Icons.mode_comment_outlined)),
              Text("$comments"),
              IconButton(onPressed: () {}, icon: Icon(Icons.share_rounded)),
              Spacer(),
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Added to Bookmark")),
                    );
                  },
                  icon: Icon(Icons.bookmark_outline_rounded)),
            ],
          ),

          if (showCommentBox)
            // Comment Box
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage('assets/images/follow images/img_1.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Write your comment",
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Post",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
