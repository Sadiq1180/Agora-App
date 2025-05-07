// import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CreateEvent2.dart';
// import 'package:image_picker/image_picker.dart';
// import '../../../utils.dart';

class EventDetails extends StatefulWidget {
  static const String routeName = 'EventDetails';
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  final TextEditingController _dateController1 = TextEditingController();
  final TextEditingController _dateController2 = TextEditingController();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(
        () {
          _dateController1.text =
              "${picked.day}/${picked.month}/${picked.year}";
        },
      );
    }
  }

  // Uint8List? _image;
  // void selectImage() async {
  //   Uint8List img = await picImage(ImageSource.gallery);
  //   setState(() {
  //     _image = img;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Create Event",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 182,
                  width: 374,
                  color: Colors.grey[400],
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Upload cover photo or video preview for this event",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      )),
                ),
                Positioned(
                  bottom: 5,
                  right: 15,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.photo)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Event Name",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Event Name",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Start Date",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: TextField(
                          controller: _dateController1,
                          readOnly: true,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                                onTap: () => _selectDate(context),
                                child: Icon(Icons.calendar_month)),
                            hintText: "Nov 21,2024",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Start Time",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.access_time_outlined),
                            hintText: "10:15 AM",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "End Date",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: TextField(
                          controller: _dateController2,
                          readOnly: true,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () => _selectDate(context),
                              child: Icon(Icons.calendar_month),
                            ),
                            hintText: "Nov 21,2024",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "End Time",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 6),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.access_time_outlined),
                            hintText: "10:15 AM",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            CreateEvent2(),
          ],
        ),
      ),
    );
  }
}
