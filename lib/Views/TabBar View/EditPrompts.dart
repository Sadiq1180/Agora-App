import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class EditPrompts extends StatelessWidget {
  const EditPrompts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Edit Prompts'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Help others start the conversation by writing that first message for them, e.g. your favorite topics, hobbies, business, ect.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Prompt 1",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: 335,
                height: 59,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          right: 10,
                          top: 6,
                        ),
                        child: Text(
                          "Hello Guys! How about a meetup at Islamabad Convention Centre, Let me know what time is best for that....",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 10,
                      child: Text(
                        "50/120",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Reply",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: 335,
                height: 59,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          right: 10,
                          top: 6,
                        ),
                        child: Text(
                          "Thanks fpr reaching me out, I will reply you as soon as possible hope you don’t mind waiting for this amazing process.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 10,
                      child: Text(
                        "50/120",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Prompt 1",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: 335,
                height: 59,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          right: 10,
                          top: 6,
                        ),
                        child: Text(
                          "Hello Guys! How about a meetup at Islamabad Convention Centre, Let me know what time is best for that....",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 10,
                      child: Text(
                        "50/120",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Reply",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: 335,
                height: 59,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                          right: 10,
                          top: 6,
                        ),
                        child: Text(
                          "Thanks fpr reaching me out, I will reply you as soon as possible hope you don’t mind waiting for this amazing process.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 10,
                      child: Text(
                        "50/120",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue, width: 1),
                  ),
                  minimumSize: Size(335, 45),
                ),
                onPressed: () {},
                child: Text(
                  "Add Prompt",
                  style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
                ),
              ),
            ),
        
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20,bottom: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.blue, width: 1),
            ),
            minimumSize: Size(335, 45),
          ),
          onPressed: () {},
          child: Text(
            "Update Prompts",
            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
