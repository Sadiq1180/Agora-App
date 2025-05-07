import 'package:agora/Views/Edit%20Profile/CompaignDetails.dart';
import 'package:agora/Views/Edit%20Profile/widgets/AnalyticsCompaignView.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/TabItem.dart';
import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  static const String routeName = 'Analytics';
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> with TickerProviderStateMixin {
  late TabController tabController3;

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
        rightIcon: const Icon(Icons.search, size: 25),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Campaigns",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TabBar(
                    controller: tabController3,
                    indicatorColor: SColors.primary,
                    labelColor: SColors.primary,
                    unselectedLabelColor: SColors.grey,
                    tabs: const [
                      TabItem(title: 'Posts'),
                      TabItem(title: 'Events'),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
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
                        if (newValue != null) {
                          setState(() {
                            selectedDay = newValue;
                          });
                        }
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
            Expanded(
              child: TabBarView(
                controller: tabController3,
                children: [
                  ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, CompaignDetails.routeName);
                        },
                        child: const CampaignCard(),
                      );
                    },
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, CompaignDetails.routeName);
                        },
                        child: const CampaignCard(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
