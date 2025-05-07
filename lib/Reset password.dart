import 'package:agora/Confirmation.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  static const String routeName = 'Reset_Password';
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _passwordVisible1 = false;
  late bool _passwordVisible2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(19, 40, 0, 0),
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: SColors.black.withOpacity(0.4)),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Column(
                  children: [
                    Text(
                      "Reset Password",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Column(
                  children: [
                    Text("Please type something you'll remember",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 49,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "New Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: 350,
                height: 70,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: !_passwordVisible1,
                  maxLength: 8,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "must be 8 characters",
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible1 = !_passwordVisible1;
                          });
                        },
                        icon: Icon(
                          _passwordVisible1
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: SColors.black.withOpacity(0.4),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Confirm new Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: 350,
                height: 70,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: !_passwordVisible2,
                  maxLength: 8,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: SColors.black.withOpacity(0.4),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "repeat Password",
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible2 = !_passwordVisible2;
                          });
                        },
                        icon: Icon(
                          _passwordVisible2
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: SColors.black.withOpacity(0.4),
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20,top: 10),
              child: SizedBox(
                height: 56,
                width: 335,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: SColors.lightBlueAccent),
                    onPressed: () {
                      Navigator.pushNamed(context, Confirmation.routeName);
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => Confirmation()));
                    },
                    child: Text("Reset Password",
                        style: TextStyle(
                            color: SColors.white, fontWeight: FontWeight.w300))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
