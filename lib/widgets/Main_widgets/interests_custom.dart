// ignore_for_file: deprecated_member_use

import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class InterestsCustomWidget extends StatelessWidget {
  const InterestsCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Interests",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: SColors.black,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("New Tech"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Farmer.ai"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Programming"),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color: SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Python"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color:  SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Learning"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color:  SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Business"),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  color:  SColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child:
                  Text("+6 More", style: TextStyle(color: Colors.blue)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}