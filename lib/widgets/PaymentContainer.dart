import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subtitle;
  final String? connectionStatus;
  final bool isElevatedButton;


  const PaymentContainer(
      {super.key,
      required this.imagePath,
      required this.title,
      this.subtitle,
      this.connectionStatus,
      this.isElevatedButton = false,

      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
      child: Column(
        children: [
          Container(
            width: 335,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Image.asset(imagePath, height: 25.45, width: 22.17),
                ),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 4),
                    if (subtitle != null) ...[
                      Text(subtitle!,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey)),
                    ]
                  ],
                ),
                Spacer(),
                if (connectionStatus != null) ...[
                  Text(connectionStatus!,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey)),
                ],
                SizedBox(width: 14),
                if (isElevatedButton)
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6))),
                      child: Text(
                        "Connect",
                        style: TextStyle(color: Colors.white),
                      )
                  ),
                SizedBox(width: 13),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
