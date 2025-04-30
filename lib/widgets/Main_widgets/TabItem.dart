import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const TabItem({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}