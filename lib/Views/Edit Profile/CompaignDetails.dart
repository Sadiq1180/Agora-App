import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class CompaignDetails extends StatefulWidget {
  const CompaignDetails({super.key});

  @override
  State<CompaignDetails> createState() => _CompaignDetailsState();
}

class _CompaignDetailsState extends State<CompaignDetails>
    with SingleTickerProviderStateMixin {
  late TabController tabController4;
  String selectedDay = "Today";
  final List<String> daysList = ["Today", "Yesterday", "07 days", "30 days"];

  @override
  void initState() {
    super.initState();
    tabController4 =
        TabController(length: 3, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    tabController4.dispose(); // Dispose of TabController to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Compaign Details",
        rightIcon: const Icon(Icons.more_vert),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dropdown for selecting days
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
                        child:
                            Text(value, style: const TextStyle(fontSize: 12)),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Campaign Results Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 600, // Increased height to fit all charts
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
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Title
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Results",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Table Header
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Reach',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300)),
                          Text('RSVP',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300)),
                          Text('Comments',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300)),
                          Text('Shares',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300)),
                          Text('Spent',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Table Data
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('10,152',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('10',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('52',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('101',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          Text("\$13.6",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    // "Spent" Title
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Spent",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Charts Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // First Chart Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/chart.png",
                                width: 230, height: 180),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/spent.png",
                                width: 70, height: 100),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // Second Chart Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/chart.png",
                                width: 230, height: 180),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/spent.png",
                                width: 70, height: 100),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Demographics Section with TabBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 300,
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
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Title
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Demographics",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                    ),

                    // TabBar
                    TabBar(
                      controller: tabController4,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      tabs: const [
                        Tab(text: "All"),
                        Tab(text: "Women"),
                        Tab(text: "Men"),
                      ],
                    ),

                    // TabBarView
                    Expanded(
                      child: TabBarView(
                        controller: tabController4,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children:[
                                // "Spent" Title
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Spent",
                                        style: TextStyle(
                                            fontSize: 12, fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                const SizedBox(height: 10),

                                // Charts Section
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/chart.png",
                                            width: 230, height: 180),
                                        const SizedBox(width: 10),
                                        Image.asset("assets/images/spent.png",
                                            width: 40, height: 100),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

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
}
