
import 'package:agora/Verification.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  static const String routeName = 'Forgot';
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 19,top: 10,),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Container(
                width: 39,
                height: 39,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: SColors.black.withOpacity(0.1),)),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(height: 39),
              Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Text(
                "Don’t worry! It happens. Please enter the email\nassociated with your account.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 50),
              Text(
                "Email address",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.only(top: 20,right: 15),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Verification.routeName);
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => Verification()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: SColors.lightBlueAccent),
                  child: Text("Send Code"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
