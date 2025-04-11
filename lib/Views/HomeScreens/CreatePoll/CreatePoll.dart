import 'package:agora/Views/Edit%20Profile/Add%20Group/Location.dart';
import 'package:agora/widgets/CircularAvatar.dart';
import 'package:agora/widgets/SettingWidget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/AppBarCustom.dart';
import 'PollLocation.dart';

class CreatePoll extends StatefulWidget {
  const CreatePoll({super.key});

  @override
  State<CreatePoll> createState() => _CreatePollState();
}

class _CreatePollState extends State<CreatePoll> {
  List<String> interests = [
    "Ahmad Ali",
    "Alex benjamin",
  ];
  Map<String, bool> switchStates = {
    "Notifications": true,
  };
  final _value2 = "Private";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: 'Create Poll',
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 8),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 29,
              height: 29,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: const Center(
                child: Icon(Icons.close, size: 18, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: CircularAvatar(
                image: "assets/images/follow images/8.png",
                size: 30,
                name: 'Ahmad Ali',
                textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                "Write Something",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8.0, right: 20),
              child: Container(
                height: 295,
                padding: EdgeInsets.only(left: 10, right: 10),
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Add Poll",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          "Allow Multiple Options",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            activeColor: Colors.blue,
                            inactiveThumbColor: Colors.grey,
                            // thumbColor: MaterialStateProperty.all(Colors.white),
                            trackOutlineColor:
                                MaterialStateProperty.all(Colors.transparent),
                            value: switchStates["Notifications"] ?? false,
                            onChanged: (value) {
                              setState(
                                  () => switchStates["Notifications"] = value);
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 240,
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Option 1",
                                  hintStyle: TextStyle(fontSize: 14),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: CircularAvatar(
                                      image:
                                          "assets/images/follow images/8.png",
                                      size: 15,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 240,
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Option 2",
                                  hintStyle: TextStyle(fontSize: 14),
                                  prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.cloud_upload_outlined)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 240,
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Option 3",
                                  hintStyle: TextStyle(fontSize: 14),
                                  prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.cloud_upload_outlined)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[300],
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add,
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Add Option",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "Add Location",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Location",
                      hintStyle: TextStyle(fontSize: 14),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Visibility",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Commenters",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Location Visibility",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Tag People",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
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
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(310, 45),
            backgroundColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>PollLocation()));
          },
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
