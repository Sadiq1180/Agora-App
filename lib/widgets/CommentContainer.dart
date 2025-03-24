import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentContainer extends StatelessWidget {
  const CommentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/follow images/Abdullah.png"),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abdullah",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Message me if you're looking \n for a workout partner",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Like button action
                      },
                      icon: Icon(Icons.thumb_up),
                    ),
                    TextButton(onPressed: (){}, child: Text("Reply",style: TextStyle(color: Colors.blue,)),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
