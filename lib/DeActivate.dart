import 'package:agora/login.dart';
import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class DeActivate extends StatelessWidget {
  const DeActivate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Account'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 17),
              child: Text(
                "Please provide your reason for leaving. Your feedback helps"
                " us to improve the user experience for current users"
                " and hopefully your future return.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: 335,
                height: 180,
                child: TextField(
                  maxLength: 150,
                  keyboardType: TextInputType.multiline,
                  maxLines: 15,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Write your Message",
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 17, right: 5),
              child: Text(
                "Are you sure you want to delete your account?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 17),
              child: Text(
                "If you delete your account you will not be able",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "to retrieve your data again.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 146,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  width: 146,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              contentPadding: const EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              content: SizedBox(
                                width: 335,
                                height: 300,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 70.0),
                                      child: Text(
                                        "Are you sure you want to Logout from your account?",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "You can login any time",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(height: 40),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 110,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close dialog
                                            },
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                         SizedBox(width: 10),
                                        SizedBox(
                                          width: 110,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.red,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).push(MaterialPageRoute(
                                                  builder: (context) =>  login()));
                                            },
                                            child: const Text(
                                              "Logout",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "Delete",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
