import 'package:agora/Views/Edit%20Profile/CompaignDetails.dart';
import 'package:agora/Views/Edit%20Profile/widgets/AnalyticsCompaignView.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/TabItem.dart';
import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> with TickerProviderStateMixin {
  late TabController tabController3;
  ///for drop down menu buttons
  String selectedDay = "Today";
  final List<String> daysList = ["Today", "Yesterday", "07 days", "30 days"];

  @override
  void initState() {
    super.initState();
    tabController3 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Analytics",
        rightIcon: Icon(Icons.search, size: 25),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Campaigns",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            //TabBar and drop menu Hide underline button inside a container
            Row(
              children: [
                  Flexible(
                  child: TabBar(
                    controller: tabController3,
                    isScrollable: false,
                    indicatorColor: SColors.primary,
                    labelColor: SColors.primary,
                    unselectedLabelColor: SColors.grey,
                    tabs: [
                      TabItem(title: 'Posts'),
                      TabItem(title: 'Events'),
                    ],
                  ),
                ),
                SizedBox(width: 50),
                //  Spacer(), // Push dropdown to right

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: SColors.grey.withOpacity(0.4),
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
              ],
            ),
            const SizedBox(height: 10),

            //  TabBar View
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CompaignDetails()));
                },
                child: TabBarView(
                  controller: tabController3,
                  children: [
                    ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: 7, // Number of posts
                      itemBuilder: (context, index) {
                        return  CampaignCard(); // Display multiple cards
                      },
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: 3, // Number of posts
                      itemBuilder: (context, index) {
                        return  CampaignCard(); // Display multiple cards
                      },
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
