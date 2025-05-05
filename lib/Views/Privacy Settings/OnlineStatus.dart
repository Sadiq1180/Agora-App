import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Onlinestatus extends StatefulWidget {
  const Onlinestatus({super.key});

  @override
  State<Onlinestatus> createState() => _OnlinestatusState();
}

class _OnlinestatusState extends State<Onlinestatus> {
  var _value1 = "Active";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Online Status"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 17,right: 20),
            child: Text(
              "Choose whether to allow others to see if you're online or not.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Text(
              "When off you will not be able to see other's status.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                value: _value1,
                items: [
                  DropdownMenuItem(
                      value: "Active",
                      child: Text(
                        "Active",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  DropdownMenuItem(
                      value: "Offline",
                      child: Text(
                        "Offline",
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
