import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

import 'CreatePoll1.dart';

class PollLocation extends StatefulWidget {
  const PollLocation({super.key});

  @override
  State<PollLocation> createState() => _PollLocationState();
}

class _PollLocationState extends State<PollLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title:'Select Location'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 6),
                child: SizedBox(
                  height: 48,
                  width: 48,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed:(){},
                        icon: const Icon(
                          Icons.gps_fixed_sharp,
                          size: 27,
                          color: Colors.white,
                        ),
                        splashRadius: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Container(
                height: 47,
                width: 275,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Search Location",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
                    SizedBox(height: 8,),
                    Text(" Current Location",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  ],
                )
              ),
            ],
          ),
          SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.history_toggle_off_outlined),
                SizedBox(width: 6),
                Text("Street 123, House 06, G10/4, Islamabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(
            height: 27.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.history_toggle_off_outlined),
                SizedBox(width: 6),
                Text("930 Elise Forest, Deonburgh 65032",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(
            height: 27.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.history_toggle_off_outlined),
                SizedBox(width: 6),
                Text("596 Margarete Shoals, Parisianberg 16921-7349",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(
            height: 27.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.history_toggle_off_outlined),
                SizedBox(width: 6),
                Text("7042 Ankunding Oval, Georgetown 31106-0174",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          SizedBox(
            height: 27.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.history_toggle_off_outlined),
                SizedBox(width: 6),
                Text("894 Yost Course, North Eloise 62516-1485",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(310, 45),
            backgroundColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>CreatePoll1()));
          },
          child: Text(
            "Done",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}