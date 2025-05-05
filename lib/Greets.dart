import 'package:agora/BottomNavigation.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CommentContainer.dart';
import 'package:agora/widgets/Main_widgets/VisitorsAvatar.dart';

import 'package:flutter/material.dart';

class Greets extends StatelessWidget {
  const Greets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 18),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
          ),
        ),
        title: const Text("Greet"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Worklife by Vornado",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "THE MART - Second Floor 222 Merchandise Mart Plaza Chicago, IL 60654",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.lightBlueAccent,
                              ),
                              child: Icon(
                                Icons.rectangle_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.lightBlueAccent,
                              ),
                              child: Icon(
                                Icons.compare_arrows,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.lightBlueAccent,
                              ),
                              child: Icon(
                                Icons.exit_to_app_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Icon(Icons.star,
                                  color: Colors.yellow, size: 16),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "5.1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "5k+ ratings",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Gallery",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              SizedBox(height: 10),

              /////////Gallery Images Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(image: AssetImage("assets/images/Gallery1.png"))
                    ),
                  ),
                  SizedBox(width: 7),
                  Container(
                    height: 130,
                    width: 114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Gallery2.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Container(
                        height: 63,
                        width: 79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          // image: DecorationImage(
                          //     image: AssetImage("assets/images/Gallery3.png"),),
                        ),
                         clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset('assets/images/Gallery3.png'),


                      ),
                      SizedBox(height: 3),
                      Container(
                        height: 63,
                        width: 79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Gallery4.png"),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              ////////visitors avatar
              VisitorsAvatar(
                title: 'Visitors',
                avatars: [
                  "assets/images/google logo.png",
                  "assets/images/Gallery1.png",
                  "assets/images/follow images/Abdullah.png",
                  "assets/images/follow images/Ahmad.png",
                  "assets/images/Gallery1.png",
                ],
              ),
              SizedBox(height: 10),
              Image.asset("assets/images/Homepage images/Group 82.png"),
              SizedBox(height: 10),
              Text("Comments",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),

              /////////////text field
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: SColors.white,
                  hintText: 'Write your Comment',
                  suffixIcon: Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ///////Elevated Button

              SizedBox(height: 10),

              /////////Comment Container
              CommentContainer(),
              SizedBox(height: 10),
              CommentContainer(),
              SizedBox(height: 10),
              CommentContainer(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 131.0),
                child: SizedBox(
                  width: 73,
                  height: 26,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        elevation: 50,
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {},
                        ),
                        hitTestBehavior: HitTestBehavior.translucent,
                        backgroundColor: SColors.error,
                        duration: Duration(seconds: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        content: Text(
                          "Network Error Go back",
                          style: TextStyle(
                              color: SColors.white, fontWeight: FontWeight.w600),
                        ),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: SColors.lightBlueAccent),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "See more",
                      maxLines: 1,
                      style: TextStyle(
                          color: SColors.lightBlueAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
     bottomNavigationBar:  Padding(
       padding:  EdgeInsets.all(8.0),
       child: ElevatedButton(
         style: ElevatedButton.styleFrom(
           fixedSize: Size(310, 45),
           backgroundColor: SColors.lightBlueAccent,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(25),
           ),
         ),
         onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavigation()));
         },
         child: Text(
           "Add to Profile",
           style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.w500,
               color: SColors.white),
         ),
       ),
     ),
    );
  }
}