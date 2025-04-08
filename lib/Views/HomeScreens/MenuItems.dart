import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(height: 20, width: 200, color: Colors.brown),
          Container(height: 50, width: 200, color: Colors.deepPurple),
          Container(height: 50, width: 200, color: Colors.green),
        ],
      ),
    );
  }
}
