import 'package:agora/Views/Edit%20Profile/Add%20Group/About_AddGrp.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  const Topics({super.key});

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  List<String> interests = [
    "Programming",
    "Coding",
    "GitHub",
    "Web Dev",
    "App Development",
    "Artificial inelegance",
    "ChatGpt"
    "Python"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: ''),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 31),
            child: Text(
              "What will your group’s tags be?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              "Select at least 4 topics to help us promote your Group to the right people.",
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
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.blue.shade200),
                // borderRadius: BorderRadius.circular(10),
              ),
              child: Wrap(
                spacing: 5,
                // runSpacing: 5,
                children: interests
                    .map(
                      (interest) => Chip(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    label: Text(interest, style: TextStyle(color: SColors.black,fontSize: 14,fontWeight: FontWeight.w300)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    backgroundColor: Colors.white,
                    // deleteIcon: Icon(Icons.close, color: Colors.white, size: 18),
                    // onDeleted: () {
                    //   setState(() {
                    //     interests.remove(interest);
                    //   });
                    // },
                  ),
                )
                    .toList(),
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About_AddGrp()));
              },
              child: Text("Next", style: TextStyle(color: SColors.white))),
        ),
      ),
    );
  }
}
