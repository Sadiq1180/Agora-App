import 'package:agora/Admin%20List/wigdet/memberContainer.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: 'Members',
        rightIcon: Icon(Icons.more_vert),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Admins",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Saifullah',
              userName: '@saif',
              profileImage: 'assets/images/follow images/Ahmad.png',
            ),

            SizedBox(
              height: 10,
            ),
           memberContainer(
              name: 'Muhammad Hasan',
              userName: '@hasan',
              profileImage: 'assets/images/follow images/person1.png',
           ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Other Members",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Saifullah',
              userName: '@saif',
              profileImage: 'assets/images/follow images/Ali.png',
            ),
            SizedBox(height: 10,),
            memberContainer(
              name: 'Ahmad Ali',
              userName: '@saif',
              profileImage: 'assets/images/follow images/Ahmad.png',
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Saifullah',
              userName: '@saif',
              profileImage: 'assets/images/follow images/person2.png',
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Saifullah',
              userName: '@saif',
              profileImage: 'assets/images/follow images/person2.png',
            ),
            SizedBox(
              height: 10,
            ),
           memberContainer(
              name: 'Muhammad Hasan',
              userName: '@hasan',
              profileImage: 'assets/images/follow images/Ahmad.png',
            ),
           SizedBox(
           ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Muhammad Hasan',
              userName: '@hasan',
              profileImage: 'assets/images/follow images/person1.png',
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Saifullah',
              userName: '@saif',
              profileImage: 'assets/images/follow images/person2.png',
            ),
            SizedBox(
              height: 10,
            ),
            memberContainer(
              name: 'Saifullah',
              userName: '@saif',
              profileImage: 'assets/images/follow images/person2.png',
            ),
          ],
        ),
      ),
    );
  }
}
