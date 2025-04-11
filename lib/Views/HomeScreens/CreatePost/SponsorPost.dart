import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/ElevatedButton.dart';
import 'package:flutter/material.dart';

import 'Paymentss.dart';

class SponsorPost extends StatefulWidget {
  const SponsorPost({super.key});

  @override
  State<SponsorPost> createState() => _SponsorPostState();
}

class _SponsorPostState extends State<SponsorPost> {
  List<String> interests = [
    "Gaming",
    "Coding",
    "Python",
    "Food",
  ];
  List<String> Profession = [
    "UI/UX Designer",
    "Web Developer",
    "Chief",
    "AI Developer",
  ];
  List<String> Locations = [
    "Islamabad,Pakistan",
    "Karachi,Pakistan",
  ];
  final _value3 = "07 Days";
  final _value5 = "18-45";
  String? _value4 = "50";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Sponsor Post"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Extend your Post, Event, or Group's reach beyond your current friends."
                " Increase engagement by selecting your desired audience's interests, profession and location.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("General",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Campaign Name",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Enter the name for your campaign",
                  hintStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Duration",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
              child: DropdownButtonFormField(
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  value: _value3,
                  items: [
                    DropdownMenuItem(
                      value: "07 Days",
                      child: Text(
                        "07 Days",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "10 Days",
                      child: Text(
                        "10 Days",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "15 Days",
                      child: Text(
                        "15 Days",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "1 Month",
                      child: Text(
                        "1 Month",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                  onChanged: (v) {}),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Total Budget",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0,right: 20),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       prefixIcon: DropdownButtonHideUnderline(
            //         child: DropdownButton<String>(
            //           value: _value4,
            //           items: ['\$', '50', '100', '150'].map((String value) {
            //             return DropdownMenuItem<String>(
            //               value: value,
            //               child: Text(value),
            //             );
            //           }).toList(),
            //           onChanged: (newValue) {
            //             // handle change
            //           },
            //         ),
            //       ),
            //     ),
            //     keyboardType: TextInputType.number,
            //     // initialValue: '50',
            //   ),
            // ),

            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _value4,
              isExpanded: true,
              icon: SizedBox.shrink(),
              onChanged: (String? newValue) {
                setState(() {
                  _value4 = newValue!;
                });
              },
              items: ["50", "100", "150"].map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                );
              }).toList(),
              selectedItemBuilder: (context) {
                return ["50", "100", "150"].map((value) {
                  return Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        value,
                        style:
                        const TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Audience",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Age",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
              child: DropdownButtonFormField(
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  value: _value5,
                  items: [
                    DropdownMenuItem(
                      value: "18-45",
                      child: Text(
                        "18-45",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "45-60",
                      child: Text(
                        "45-60",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                  onChanged: (v) {}),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Interests",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 2),
              child: Container(
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
                              EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                          label: Text(
                            interest,
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Professions",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 2),
              child: Container(
                width: 320,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Wrap(
                  spacing: 5,
                  // runSpacing: 5,
                  children: Profession.map(
                    (interest) => Chip(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                      label: Text(
                        interest,
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.lightBlueAccent,
                      deleteIcon:
                          Icon(Icons.close, color: Colors.white, size: 18),
                      onDeleted: () {
                        setState(() {
                          interests.remove(interest);
                        });
                      },
                    ),
                  ).toList(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Locations",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 2),
              child: Container(
                width: 320,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Wrap(
                  spacing: 5,
                  // runSpacing: 5,
                  children: Locations.map(
                    (interest) => Chip(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                      label: Text(
                        interest,
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.grey,
                      deleteIcon:
                          Icon(Icons.close, color: Colors.white, size: 18),
                      onDeleted: () {
                        setState(() {
                          interests.remove(interest);
                        });
                      },
                    ),
                  ).toList(),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
        child: CustomElevatedButton(
          text: "Next",
          color: Colors.lightBlueAccent,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Paymentss(),
              ),
            );
          },
        ),
      ),
    );
  }
}
