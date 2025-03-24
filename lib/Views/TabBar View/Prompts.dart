import 'package:agora/Views/TabBar%20View/EditPrompts.dart';
import 'package:flutter/material.dart';

class Prompts extends StatelessWidget {
  const Prompts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditPrompts()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: const Text(
                  "Edit",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 193,
              width: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 57,
                      width: 319,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Looking for my upcoming DJ sets schedule?\nClick here!  ",
                          style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Need a full stack app built? Let's talk!",
                          style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ask me about my 2017 Jaguar F Type for sale",
                          style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
