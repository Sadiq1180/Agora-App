import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image 7.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Expand your Social Circle",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Meet others who share similar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 6),
              Text(
                "interests, hobbies, locations & more.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                    fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              // Image.asset(
              //   "assets/images/Frame 243.png",
              //   height: 8,
              //   width: 46,
              // ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,  // Text color
                  backgroundColor: Colors.lightBlueAccent, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15), // Padding around the text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  elevation: 5,  // Shadow effect
                ),
                child: Text(
                  "Continue",  // Button text
                  style: TextStyle(
                    fontSize: 16,  // Font size
                    fontWeight: FontWeight.w600,  // Bold text
                  ),
                ),
              ),

              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
