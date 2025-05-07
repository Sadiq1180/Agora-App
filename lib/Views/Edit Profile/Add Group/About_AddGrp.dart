import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

import 'GroupName.dart';

class About_AddGrp extends StatelessWidget {
  static const String routeName = 'About_AddGrp';
  const About_AddGrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: ""),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 31),
            child: Text(
              "What will your group be about?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Include your Group's description, rules, and any"
              " other useful information for your members.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: SizedBox(
              width: 330,
              height: 180,
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 15,
                maxLength: 150,
                decoration: InputDecoration(
                  fillColor: SColors.white,
                  filled: true,
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Write about your Group",
                  hintStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
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
                Navigator.pushNamed(context, GroupName.routeName);
              },
              child: Text("Next", style: TextStyle(color: SColors.white))),
        ),
      ),
    );
  }
}
