import 'package:flutter/material.dart';

import '../../widgets/AppBarCustom.dart';

class Groupss extends StatefulWidget {
  const Groupss({super.key});

  @override
  State<Groupss> createState() => _GroupssState();
}

class _GroupssState extends State<Groupss> {
  final _value2 = "Everyone";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Groups"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Text("Choose who can see your Group activity.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20,top: 10),
            child: Text("• Groups you are apart of.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20),
            child: Text("• Groups you are an admin of.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                value: _value2,
                items: [
                  DropdownMenuItem(
                      value: "Everyone",
                      child: Text(
                        "Everyone",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  DropdownMenuItem(
                      value: "Only you",
                      child: Text(
                        "Only you",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  DropdownMenuItem(
                      value: "Only Friends",
                      child: Text(
                        "Only Friends",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                ],
                onChanged: (v) {}),
          )
        ],
      ),
    );
  }
}
