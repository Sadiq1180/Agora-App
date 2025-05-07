import 'package:agora/Views/HomeScreens/CreatePoll/PollLocation.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:flutter/material.dart';

class CreatePoll extends StatefulWidget {
  static const String routeName = 'CreatePoll';
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
                color: SColors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: SColors.grey),
              ),
              child: const Center(
                child: Icon(Icons.close, size: 18, color: SColors.black),
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
                image: SImages.person3,
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
                  color: SColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: SColors.grey),
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
                            activeColor: SColors.primary,
                            inactiveThumbColor: SColors.grey,
                            // thumbColor: MaterialStateProperty.all(Colors.white),
                            trackOutlineColor:
                                MaterialStateProperty.all(SColors.transparent),
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
                                          SImages.createPostImage3,  
                                      size: 15,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color: SColors.grey,
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
                                      color: SColors.grey,
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
                                      color: SColors.grey,
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
                        foregroundColor: SColors.white,
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
                          color: SColors.grey,
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
                  dropdownColor: SColors.white,
                  icon: Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                      fillColor: SColors.white,
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
                  dropdownColor: SColors.white,
                  icon: Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                      fillColor: SColors.white,
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
                  dropdownColor: SColors.white,
                  icon: Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                      fillColor: SColors.white,
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
                              style: TextStyle(color: SColors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: SColors.lightBlueAccent,
                          deleteIcon:
                              Icon(Icons.close, color: SColors.white, size: 18),
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
            backgroundColor: SColors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {
             Navigator.pushNamed(context, PollLocation.routeName);
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) =>PollLocation()));
          },
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: SColors.white),
          ),
        ),
      ),
    );
  }
}
