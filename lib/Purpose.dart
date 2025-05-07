import 'package:agora/Follow.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:flutter/material.dart';

class Purpose extends StatefulWidget {
  static const String routeName = 'Purpose';
  const Purpose({super.key});

  @override
  State<Purpose> createState() => _PurposeState();
}

bool _Socialize = false;
bool _Connect = false;
bool _Discover = false;
bool _Business = false;

int _selectedValue = 1;

class _PurposeState extends State<Purpose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 20,
          // ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              alignment: Alignment.topCenter,
              height: 136,
              width: 138,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      SImages.agoraLogo,
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Lets Us Know',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Text(
            ''
            'What brings you to Partner Social',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
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
                    "Socialise",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 62.0),
            child: Row(
              children: [
                Text("Make new Friends"),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Radio<int>(
                  value: 2, // Unique value for this option
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
                    "Connect",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 62.0),
            child: Row(
              children: [
                Text("Stay connected to current friends and groups"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Radio<int>(
                  value: 3, // Unique value for this option
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
                      _selectedValue = 3;
                    });
                  },
                  child: Text(
                    "Discover",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 62.0),
            child: Row(
              children: [
                Text("Discover Events and Groups"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Radio<int>(
                  value: 4, // Unique value for this option
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
                      _selectedValue = 4;
                    });
                  },
                  child: Text(
                    "Business",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62.0),
            child: Row(
              children: [
                Text("Promote my businesss"),
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                elevation: 2,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 130),
              ),
              onPressed: () => {
                   Navigator.pushNamed(context, Follow.routeName),
                  },
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
