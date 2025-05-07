import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

import 'Livee.dart';

class EventLocation extends StatelessWidget {
  static const String routeName = 'EventLocation';  
  const EventLocation({super.key});

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
              "What is the Event's location?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20),
            child: Text(
              "Select the location where the event will happen so that people can see the location and visit on time.",
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
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
                alignment: Alignment.center,
                child: TextButton(onPressed: (){}, child: Text("Sponsor Post",style: TextStyle(color: Colors.blue,fontSize: 12),),)
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
                backgroundColor: SColors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Livee()));
                Navigator.pushNamed(context, Livee.routeName);
              },
              child: Text("Publish", style: TextStyle(color: SColors.white))),
        ),
      ),
    );
  }
}
