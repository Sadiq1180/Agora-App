import 'package:agora/constants/app_colors.dart' show SColors;
import 'package:flutter/material.dart';

class CustomDIvider extends StatelessWidget {
  const CustomDIvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 15.0), 
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: SColors.grey,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Or Sign in with",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            child: Divider(
              color: SColors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
