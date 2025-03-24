import 'package:flutter/material.dart';
import '../../../widgets/CircularAvatar.dart';

class BlockedUsersCont extends StatelessWidget {
  const BlockedUsersCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/Abdullah.png",
                      name: "Abdullah ",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/Ahmad.png",
                      name: "Ahmad Ali ",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/Ali.png",
                      name: "Ali Khan",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/img_1.png",
                      name: "Alex Carl ",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/person1.png",
                      name: "John Snow ",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/person2.png",
                      name: "Freaks",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding:  EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
              width: 335,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 3,
                    offset:  Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: CircularAvatar(
                      image: "assets/images/follow images/unknown profile.jpg",
                      name: "Asif Ali",
                      textStyle:  TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:  BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          // backgroundColor: Colors.white38,
                          foregroundColor: Colors.black,
                          // shadowColor: Colors.transparent,
                        ),
                        onPressed: (
                            ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please wait and come back later'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        child: Text(
                          "Unblock",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
