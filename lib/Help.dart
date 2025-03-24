import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title:'Help'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 17),
              child: Text(
                "partnrSocial Help Center",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Text(
                "Whether you're new to the platform or looking to maximize your experience, "
                "our Help Center is available to provide guidance and solutions. "
                "Send us a message here and we'll get back to you as soon as possible.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                "If you want to deactivate or delete your account",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                "Click Here",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 10.0, bottom: 5),
            //   child: TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "Click Here",
            //         style: TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.lightBlueAccent),
            //       )),
            // )
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 30),
              child: Text(
                "Contact Customer Support",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "First Name",
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: TextField(
                maxLines: 1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Last Name",
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: 335,
                height: 141,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 15,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "Comment",
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: 345,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
