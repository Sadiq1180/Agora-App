import 'package:agora/Views/HomeScreens/CreatePoll/PollLocation.dart';
import 'package:agora/widgets/CircularAvatar.dart';
import 'package:flutter/material.dart';

import '../../../widgets/AppBarCustom.dart';
import '../../../widgets/ElevatedButton.dart';
import 'CreatePostLocation.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  List<String> interests = [
    "Ahmad Ali",
    "Alex benjamin",
  ];
  final _value2 = "Private";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: 'Create Post',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularAvatar(
                image: "assets/images/follow images/8.png",
                size: 25,
                name: 'Ahmad Ali',
                textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/CreatePostImag/crPost1.png",
                          width: 65,
                          height: 65,
                        ),
                      ),
                      Positioned(
                          top: 5,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.close,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/CreatePostImag/crPost2.png",
                          width: 65,
                          height: 65,
                        ),
                      ),
                      Positioned(
                          top: 5,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.close,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/CreatePostImag/crPost3.png",
                          width: 65,
                          height: 65,
                        ),
                      ),
                      Positioned(
                          top: 5,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.close,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: 335,
                  height: 141,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 15,
                    maxLength: 100,
                    decoration: InputDecoration(
                      hintText: 'Write Description',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      contentPadding: EdgeInsets.all(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Add Location",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Location",
                        hintStyle: TextStyle(fontSize: 14),
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_rounded)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Visibility",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: DropdownButtonFormField(
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    value: _value2,
                    items: [
                      DropdownMenuItem(
                          value: "Private",
                          child: Text(
                            "Private",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                      DropdownMenuItem(
                          value: "Only You",
                          child: Text(
                            "Only You",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                    ],
                    onChanged: (v) {}),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Commenters",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: DropdownButtonFormField(
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    value: _value2,
                    items: [
                      DropdownMenuItem(
                          value: "Private",
                          child: Text(
                            "Private",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                      DropdownMenuItem(
                          value: "Only You",
                          child: Text(
                            "Only You",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                    ],
                    onChanged: (v) {}),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Location Visibility",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 5),
                child: DropdownButtonFormField(
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    value: _value2,
                    items: [
                      DropdownMenuItem(
                          value: "Private",
                          child: Text(
                            "Private",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                      DropdownMenuItem(
                          value: "Only You",
                          child: Text(
                            "Only You",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )),
                    ],
                    onChanged: (v) {}),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Tag People",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 5),
              Container(
                width: 320,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Wrap(
                  spacing: 5,
                  // runSpacing: 5,
                  children: interests
                      .map(
                        (interest) => Chip(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          label: Text(interest,
                              style: TextStyle(color: Colors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.lightBlueAccent,
                          deleteIcon:
                              Icon(Icons.close, color: Colors.white, size: 18),
                          onDeleted: () {
                            setState(() {
                              interests.remove(interest);
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 20),
        child: CustomElevatedButton(text: "Next", onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreatePostLocation()));
        }),
      ),
    );
  }
}
