import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class CompaignDetails extends StatefulWidget {
  static const String routeName = 'CompaignDetails';
  const CompaignDetails({super.key});

  @override
  State<CompaignDetails> createState() => _CompaignDetailsState();
}

class _CompaignDetailsState extends State<CompaignDetails>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  String selectedDay = "Today";
  final List<String> daysList = ["Today", "Yesterday", "07 days", "30 days"];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Campaign Details",
        rightIcon: const Icon(Icons.more_vert),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dropdown for day selection
            Padding(
              padding: const EdgeInsets.only(left: 250.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
            ),

            const SizedBox(height: 10),

            // Results Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 600,
                width: 335,
                decoration: BoxDecoration(
                  color: SColors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: SColors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10),
                      child: Text(
                        "Results",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Reach', style: TextStyle(fontSize: 12)),
                          Text('RSVP', style: TextStyle(fontSize: 12)),
                          Text('Comments', style: TextStyle(fontSize: 12)),
                          Text('Shares', style: TextStyle(fontSize: 12)),
                          Text('Spent', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('10,152', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('10', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('52', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('101', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Text("\$13.6", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Spent", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/chart.png", width: 230, height: 180),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/spent.png", width: 70, height: 100),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/chart.png", width: 230, height: 180),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/spent.png", width: 70, height: 100),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Demographics Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 300,
                width: 335,
                decoration: BoxDecoration(
                  color: SColors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: SColors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Demographics", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                    ),
                    TabBar(
                      controller: tabController,
                      labelColor: SColors.black,
                      unselectedLabelColor: SColors.grey,
                      indicatorColor: SColors.primary,
                      tabs: const [
                        Tab(text: "All"),
                        Tab(text: "Women"),
                        Tab(text: "Men"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          _buildDemographicsTab(),
                          _buildDemographicsTab(),
                          _buildDemographicsTab(),
                        ],
                      ),
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

  Widget _buildDemographicsTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Spent", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/chart.png", width: 230, height: 180),
              const SizedBox(width: 10),
              Image.asset("assets/images/spent.png", width: 40, height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
