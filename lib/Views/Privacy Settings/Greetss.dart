import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Greetss extends StatefulWidget {
  const Greetss({super.key});

  @override
  State<Greetss> createState() => _GreetssState();
}

class _GreetssState extends State<Greetss> {
  var _value = "Everyone";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Greets"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 17),
            child: Text(
              "Choose who can see your Greets",
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
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                value: _value,
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
                      ))
                ],
                onChanged: (v) {}),
          )
        ],
      ),
    );
  }
}