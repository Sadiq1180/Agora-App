import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FollowRequest extends StatefulWidget {
  // custom parameters
  final String name;
  final String username;
  final String profileImage;
  final String bio;
  final VoidCallback? onPressed;
  final double profileImageSize;
  final double width;
  final double height;

  const FollowRequest({
    super.key,
    this.name = "Name",
    this.username = "@username",
    this.profileImage = "assets/images/follow images/unknown profile.jpg",
    this.bio = "Your bio goes here",
    this.onPressed,
    this.profileImageSize = 35.0,
    this.width = 350.0,
    this.height = 79.0,
  });

  @override
  State<FollowRequest> createState() => _FollowRequestState();
}

class _FollowRequestState extends State<FollowRequest> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.5, vertical: 6.5),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: SColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: widget.profileImageSize,
              backgroundImage: AssetImage(widget.profileImage),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2),
                  Text(
                    widget.username,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2),
                  Text(
                    widget.bio,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 13),
              child: SizedBox(
                width: 90,
                height: 35,
                child: ElevatedButton(
                  onPressed: widget.onPressed ?? () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: SColors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Follow",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: SColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
