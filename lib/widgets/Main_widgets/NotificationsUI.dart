import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:flutter/material.dart';

class NotificationsUI extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String timestamp;

  const NotificationsUI({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 72,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: SColors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0, top: 4),
            child: CircularAvatar(
              image: image,
              size: 31,
            ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0,bottom: 30),
            child: Text(
              timestamp,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
