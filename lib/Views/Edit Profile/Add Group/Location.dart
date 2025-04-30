import 'package:agora/Views/Edit%20Profile/Add%20Group/Topics.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: ""),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 31),
            child: Text(
              "Where will your group will be located?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 10),
            child: Text(
              "Partnr will suggest your Group to relevant people nearby",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on),
                  suffixIcon: Icon(Icons.highlight_remove_outlined),
                  hintText: "Islamabad,Pakistan",
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: SColors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Topics()));
              },
              child: Text("Next", style: TextStyle(color: SColors.white))),
        ),
      ),
    );
  }
}
