import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'CreateEvent3.dart';

class CreateEvent2 extends StatefulWidget {
  const CreateEvent2({super.key});

  @override
  State<CreateEvent2> createState() => _CreateEvent2State();
}

class _CreateEvent2State extends State<CreateEvent2> {
  int _selectedValue = 1;
  int _secondSelectedValue = 1;
  final String _value0 = "Free";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Event Cost",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: DropdownButtonFormField(
                    
                      icon: Icon(Icons.keyboard_arrow_down),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: SColors.primaryLight,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                      ),
                      value: _value0,
                      items: [
                        DropdownMenuItem(
                          value: "Free",
                          child: Text(
                            "Free",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "Paid",
                          child: Text(
                            "Paid",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                      onChanged: (v) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amount",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 6),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    
                    decoration: InputDecoration(
                      counterText: "",
                      prefixIcon: Icon(Icons.attach_money),
                      hintText: "00:00",
                      hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: SColors.info,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: SColors.info,
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
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "In Person/Virtual",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = 1;
                });
              },
              child: Text(
                "Virtual",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(width: 10,),
            Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedValue = 2;
                });
              },
              child: Text(
                "In Person",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Created For",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height:6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<int>(
              value: 3,
              groupValue: _secondSelectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _secondSelectedValue = newValue!;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _secondSelectedValue = 3;
                });
              },
              child: Text(
                "Group",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Radio<int>(
              value: 4,
              groupValue: _secondSelectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _secondSelectedValue = newValue!;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _secondSelectedValue = 4;
                });
              },
              child: Text(
                "General",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        CreateEvent3(),
      ],
    );
  }
}
