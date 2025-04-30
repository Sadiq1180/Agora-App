import 'package:agora/Views/HomeScreens/CreatePoll/widget/PostHeaderSection.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:agora/widgets/Main_widgets/VisitorsAvatar.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';


class CreatePoll1 extends StatefulWidget {
  const CreatePoll1({super.key});

  @override
  State<CreatePoll1> createState() => _CreatePoll1State();
}

class _CreatePoll1State extends State<CreatePoll1> {
  int tapCount = 0;
  static const int maxTaps = 100;
  Color getLineColor() {
    final percentage = (tapCount / maxTaps).clamp(0.0, 1.0);
    return Color.lerp(Colors.blue.shade700, Colors.blue, percentage)!;
  }

  double getLineWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final percentage = (tapCount / maxTaps).clamp(0.0, 1.0);
    return width * percentage;
  }

  int? groupValue1;
  void onChanged1(int? value) {
    setState(() {
      groupValue1 = value;
    });
  }
  int? groupValue2;
  void onChanged2(int? value) {
    setState(() {
      groupValue2 = value;
    });
  }
  int? groupValue3;
  void onChanged3(int? value) {
    setState(() {
      groupValue3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Create Poll"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostHeaderSection(
                  profileImage: 'assets/images/follow images/Ali.png',
                  username: 'Ahmad Ali',
                  withPerson: 'Muhammad Ali',
                  location: 'Islamabad,Pakistan',
                ),
                const SizedBox(height: 10),
                const Text("Who is Your Favourite Leader?"),
                const SizedBox(height: 10),
                Container(
                  height: 295,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          CircularAvatar(
                            image: 'assets/images/follow images/Ali.png',
                            size: 15,
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tapCount++;
                              });
                            },
                            child: Container(
                              height: 10,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade300,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 15,
                                  width: getLineWidth(context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: getLineColor(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: VisitorsAvatar(
                              avatarSize: 8,
                              avatars: [
                                "assets/images/google logo.png",
                                "assets/images/Gallery1.png",
                                "assets/images/follow images/Abdullah.png",
                                "assets/images/follow images/Ahmad.png",
                                "assets/images/Gallery1.png",
                              ],
                              title: '',
                            ),
                          ),
                          Radio(
                            value: 1,
                            groupValue: groupValue1,
                            onChanged: onChanged1,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircularAvatar(
                            image: 'assets/images/follow images/Ali.png',
                            size: 15,
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tapCount++;
                              });
                            },
                            child: Container(
                              height: 10,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade300,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 15,
                                  width: getLineWidth(context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: getLineColor(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: VisitorsAvatar(
                              avatarSize: 8,
                              avatars: [
                                "assets/images/google logo.png",
                                "assets/images/Gallery1.png",
                                "assets/images/follow images/Abdullah.png",
                                "assets/images/follow images/Ahmad.png",
                                "assets/images/Gallery1.png",
                              ],
                              title: '',
                            ),
                          ),
                          Radio(
                            value: 1,
                            groupValue: groupValue2,
                            onChanged: onChanged2,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircularAvatar(
                            image: 'assets/images/follow images/Ali.png',
                            size: 15,
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tapCount++;
                              });
                            },
                            child: Container(
                              height: 10,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.shade300,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 15,
                                  width: getLineWidth(context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: getLineColor(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: VisitorsAvatar(
                              avatarSize: 8,
                              avatars: [
                                "assets/images/google logo.png",
                                "assets/images/Gallery1.png",
                                "assets/images/follow images/Abdullah.png",
                                "assets/images/follow images/Ahmad.png",
                                "assets/images/Gallery1.png",
                              ],
                              title: '',
                            ),
                          ),
                          Radio(
                            value: 1,
                            groupValue: groupValue3,
                            onChanged: onChanged3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 85),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fixedSize: const Size(320, 45),
                    ),
                    onPressed: () {
                      Flushbar(
                        message: "Poll Posted Successfully",
                        duration: Duration(seconds: 1),
                        flushbarPosition: FlushbarPosition.TOP,
                        backgroundColor: Colors.green,
                        margin: EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(10),
                      ).show(context);

                      // Navigator.of(context).push(
                      //   MaterialPageRoute(builder: (context) => PollScreen()),
                      // );
                    },
                    child: const Text(
                      "Post Poll",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}