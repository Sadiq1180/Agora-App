import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: ProfileContainer(),
      ),
    ),
  ));
}

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              'https://via.placeholder.com/100',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),

          // Name
          Text(
            'John Doe',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),

          // Title and Subtitle
          Text(
            'Software Developer',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[700]),
          ),
          Text(
            'Flutter & C# Expert',
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
          SizedBox(height: 10),

          // Icons aligned to the right
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.thumb_up, color: Colors.blue),
              SizedBox(width: 10),
              Icon(Icons.comment, color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}
