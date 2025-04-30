import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MainProfileCustomWidgett extends StatelessWidget {
  const MainProfileCustomWidgett({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 314,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: SColors.lightBlueAccent,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                      color: SColors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: SColors.white,
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
            const SizedBox(height: 10),
    
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Landed on 12 December",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Text(
                  "Upcoming Programmer",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Text(
                  "Python Developer",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Text(
                  "#coding #python #Artificialintelligence",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
