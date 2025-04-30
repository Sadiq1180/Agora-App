import 'package:agora/Follow.dart';
import 'package:agora/Forgot.dart';
import 'package:agora/register.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _rememberMe = false;
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
            ),
            Center(
              ///////////////TOP IMAGE//////////
              child: Image.asset(
                'assets/images/agora.png',
                height: 136,
                width: 138,
              ),
            ),
            SizedBox(height: 20),

            /////////LOG IN TEXT//////////
            Text(
              "Log in Here",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              "Enter your details to sign in to your",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "account",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),

            ////////TEXTFIELD AREA/////////
            Column(
              children: [
                Form(
                  key: _formKey,
                  child: SizedBox(
                    width: 320,
                    height: 70,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(),
                        hintText: "Email or Username",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SizedBox(
                  width: 320,
                  height: 55,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black45,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //////FORGOT PASSWORD////
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Align(
                alignment: Alignment(0.97, 0),
                child: TextButton(
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Forgot())),
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Checkbox(
                    visualDensity: VisualDensity.standard,
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                    shape: CircleBorder(),
                  ),
                ),
                Text("Remember Me"),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Follow()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                // maximumSize: Size(50, 35),
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
                elevation: 1,
              ),
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text("-------------  Or Sign in with  -------------"),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 72,
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.05),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          alignment: Alignment.bottomLeft,
                          "assets/images/google logo.png",
                          height: 30,
                          // width: 120,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(fontSize: 16),
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
                      border: Border.all(color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.05),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          alignment: Alignment.bottomLeft,
                          "assets/images/apple logo.png",
                          height: 30,
                          //width: 120,
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
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => register()),
                      );
                    },
                    child: Text("Register")),
              ],
            ),
          ],
        ),
      ),
    );
    //   Container(
  }
}
