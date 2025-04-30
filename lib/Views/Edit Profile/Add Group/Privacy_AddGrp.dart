import 'package:agora/Views/Edit%20Profile/Add%20Group/InviteFriends.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Privacy_AddGrp extends StatefulWidget {
  const Privacy_AddGrp({super.key});

  @override
  State<Privacy_AddGrp> createState() => _Privacy_AddGrpState();
}

class _Privacy_AddGrpState extends State<Privacy_AddGrp> {
  final _value2 = "Private";
  final _value3 = "Public";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: ''),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 31),
            child: Text(
              "Will your group be public or private?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Make your group private so others have to request"
              " to join or make it public for anyone to join at anytime.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
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
                      value: "Public",
                      child: Text(
                        "Public",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                ],
                onChanged: (v) {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 52),
            child: Text(
              "Who can view your group?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Make your group visible to the public or only the people you invite.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                value: _value3,
                items: [
                  DropdownMenuItem(
                      value: "Public",
                      child: Text(
                        "Public",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  DropdownMenuItem(
                      value: "Private",
                      child: Text(
                        "Private",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                ],
                onChanged: (v) {}),
          ),

        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => InviteFriends()));
              },
              child: Text("Next", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
