import 'package:agora/widgets/AppBarCustom.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'CreatePooost.dart';


class CreatePostLocation extends StatefulWidget {
  const CreatePostLocation({super.key});

  @override
  State<CreatePostLocation> createState() => _CreatePostLocationState();
}

class _CreatePostLocationState extends State<CreatePostLocation> {
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
          //TextField in place of the search bar
          //       SizedBox(
          //       height: 47,
          //       width: 275,
          // child: TextField(
          // decoration: InputDecoration(
          // hintText: " Search Location",
          // hintStyle: const TextStyle(fontSize: 10,fontWeight: FontWeight.w300),
          // suffixIcon: const Icon(Icons.search,size: 20,),
          // enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10),
          // borderSide: const BorderSide(color: Colors.grey),
          // ),
          // focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10),
          // borderSide: const BorderSide(color: Colors.lightBlueAccent),
          // ),
          // ),
          // style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
          // onChanged: (value) {
          // // Handle text field changes here
          // print("Search text changed to: $value");
          // },
          // ),
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
            // Flushbar(
            //   message: "Successfully Created a Poll",
            //   duration: Duration(seconds: 3),
            //   flushbarPosition: FlushbarPosition.TOP,
            //   backgroundColor: Colors.green,
            //   margin: EdgeInsets.all(8),
            //   borderRadius: BorderRadius.circular(8),
            // ).show(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>CreatePooost()));
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



