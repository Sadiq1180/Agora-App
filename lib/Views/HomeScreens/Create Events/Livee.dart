import 'package:agora/widgets/AppBarCustom.dart';
import 'package:agora/widgets/ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Sponsor Event/SponsorEvent.dart';

class Livee extends StatelessWidget {
  const Livee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: ''),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Text(
                "If the event is virtual, then write the instructions.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Write about the event, if there is not a physical event happening then "
                "talk about the instruction that user have to follow in order to attend the event.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Text(
                "External links",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20,top: 6),
              child: TextFormField(
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  hintText: "https//:partnrsocial/event/musicalnightwithatofaslam",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12,color: Colors.blue),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
              child: Text(
                "Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: 335,
                height: 206,
                child: TextField(
                  maxLength: 150,
                  keyboardType: TextInputType.multiline,
                  maxLines: 15,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
            ),
        
          ],
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 10),
        child: CustomElevatedButton(
          text: 'Complete',
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SponsorEvent()));
          },
        ),
      ),
    );
  }
}
