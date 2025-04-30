import 'package:agora/widgets/Main_widgets/ElevatedButton.dart';
import 'package:flutter/material.dart';

import 'EventLocation.dart';

class CreateEvent3 extends StatefulWidget {
  const CreateEvent3({super.key});

  @override
  State<CreateEvent3> createState() => _CreateEvent3State();
}

class _CreateEvent3State extends State<CreateEvent3> {
  bool isChecked = false;
  final _value5 = "Members Only";
  final _value6 = "150";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Select Group",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: "UI/UX Designers",
              hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
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
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(
                  () {
                    isChecked = newValue!;
                  },
                );
              },
            ),
            Text(
              "Invite all Group Members",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Who can see?",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
          child: DropdownButtonFormField(
              icon: Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
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
              value: _value5,
              items: [
                DropdownMenuItem(
                  value: "Members Only",
                  child: Text(
                    "Members Only",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                DropdownMenuItem(
                  value: "Friends Only",
                  child: Text(
                    "Friends Only",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                DropdownMenuItem(
                  value: "Only Me",
                  child: Text(
                    "Only Me",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
              onChanged: (v) {}),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Attendees Limit",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
          child: DropdownButtonFormField(
              icon: Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
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
              value: _value6,
              items: [
                DropdownMenuItem(
                  value: "150",
                  child: Text(
                    "150",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                DropdownMenuItem(
                  value: "100",
                  child: Text(
                    "100",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                DropdownMenuItem(
                  value: "50",
                  child: Text(
                    "50",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
              onChanged: (v) {}),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Details",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: 335,
            height: 206,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLength: 150,
              maxLines: 15,
              decoration: InputDecoration(
                hintText:
                    "Immerse yourself in a night of musical magic as Atif Aslam and his band take the stage."
                    " The charismatic singer, known for his soulful voice, will serenade the audience with chart-topping"
                    " hits and emotive ballads. Join the energy of the crowd, lose yourself in the music, and experience an unforgettable"
                    " concert that transcends boundaries. Get ready for a short yet powerful journey through the enchanting world of Atif Aslam"
                    " and his phenomenal band.",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
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
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0,top: 30),
          child: CustomElevatedButton(text: "Next", onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EventLocation()));
          },color: Colors.lightBlueAccent,),
        )
      ],
    );
  }

}
