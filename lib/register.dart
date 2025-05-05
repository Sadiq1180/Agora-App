import 'package:agora/Purpose.dart';
import 'package:agora/constants/password_field.dart';
import 'package:agora/widgets/Main_widgets/custom_divider.dart';
import 'package:agora/widgets/Main_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  _registerState createState() => _registerState();
}

bool _termsAndConditions = false;
bool _passwordVisible = false;
bool _confirmPassword = false;
bool _privacyPolicy = false;

final nameController = TextEditingController();
final userNameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Image.asset(
              "assets/images/agora.png",
              height: 136,
              width: 138,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Create Account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Enter your details to create your account",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //////////Registeration Form///////
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(children: [
              STextField(
                controller: nameController,
                hintText: "Full Name",
    
              ),
              SizedBox(
                height: 20,
              ),
              Column(children: [
             STextField(
                controller: userNameController,
                hintText: "Username",
    
              ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SPasswordField(controller: _passwordController, hintText: "Password"),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                    SPasswordField(controller: _passwordController, hintText: "Confirm Password"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: _termsAndConditions,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _termsAndConditions = value ?? false;
                                  });
                                },
                                shape: CircleBorder(),
                              ),
                            ),
                            Text(
                              "I agree to all",
                              style: TextStyle(fontSize: 14),
                            ),
                            TextButton(
                                onPressed: () => {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.1),
                                  child: Text("Terms & Conditions"),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: _privacyPolicy,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _privacyPolicy = value ?? false;
                                  });
                                },
                                shape: CircleBorder(),
                              ),
                            ),
                            Text(
                              "I agree to the",
                              style: TextStyle(fontSize: 14),
                            ),
                            TextButton(
                                onPressed: () => {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.1),
                                  child: Text("Privacy Policy"),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent,
                              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 110),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 2,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Purpose()),
                              );
                            },
                            child: SizedBox(
                              width: 260, // Fixed width to prevent text overflow
                              child: Center(
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                       CustomDIvider(),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 72,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/google logo.png",
                                        height: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Google",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 72,
                                    width: 125,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black.withOpacity(0.1)),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          alignment: Alignment.bottomLeft,
                                          "assets/images/apple logo.png",
                                          height: 30,
                                          // width: 120,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Apple ID",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already hava an account?",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextButton(onPressed: () {}, child: Text("Register")),
                      ],
                    )
                  ],
                ),
              ]),
            ]),
          )
        ]));
  }
}

