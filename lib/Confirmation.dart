import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/login.dart';
import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  static const String routeName = 'Confirmation';
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 214.0,
                ),
                child:
                    Image.asset(SImages.starImage1),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Image.asset(SImages.starImage2),
          ),
          SizedBox(
            height: 36,
          ),
          SizedBox(
            height: 26,
            width: 150,
            child: Column(
              children: [
                Text(
                  "Password Changed",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 90,
            width: 250,
            child: Column(
              children: [
                Text(
                  "Your password has been changed",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                Text(
                  "successfully",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 37),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: double.tryParse(
              "335",
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: SColors.lightBlueAccent,
                  elevation: 3,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, login.routeName);
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("Back to login",style: TextStyle(color: SColors.white,fontWeight: FontWeight.w300),)),
          )
        ]),
      ),
    );
  }
}
