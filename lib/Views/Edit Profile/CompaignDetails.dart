import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class CompaignDetails extends StatefulWidget {
  const CompaignDetails({super.key});

  @override
  State<CompaignDetails> createState() => _CompaignDetailsState();
}

class _CompaignDetailsState extends State<CompaignDetails> {
  @override
  Widget build(BuildContext context) {
    ///for drop down menu buttons
    String selectedDay = "Today";
    final List<String> daysList = ["Today", "Yesterday", "07 days", "30 days"];
    return Scaffold(
      appBar: AppBarCustom(
        title: "Compaign Details",
        rightIcon: Icon(Icons.more_vert),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 250.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedDay,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDay = newValue!;
                    });
                  },
                  items: daysList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: const TextStyle(fontSize: 12)),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 445,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Text(
                          "Results",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Reach',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'RSVP',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Comments',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Shares',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Spent',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          '10,152',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '10',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          '52',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          '101',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "\$13.6",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Spent",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/chart.png",width: 270,height: 300),Image.asset("assets/images/spent.png",width: 50,height: 100)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

