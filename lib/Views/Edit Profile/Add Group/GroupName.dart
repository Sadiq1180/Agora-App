import 'package:flutter/material.dart';

import '../../../widgets/AppBarCustom.dart';
import 'Privacy_AddGrp.dart';

class GroupName extends StatelessWidget {
  const GroupName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: ''),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 31),
            child: Text(
              "What is your Group name?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
            child: Text(
              "Choose a name that will give people a clear idea of what this Group is about. You can always edit this later.",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          )
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
                    .push(MaterialPageRoute(builder: (context) => Privacy_AddGrp()));
              },
              child: Text("Next", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
