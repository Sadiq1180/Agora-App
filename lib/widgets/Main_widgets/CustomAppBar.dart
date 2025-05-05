import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final double elevation;
  final bool centerTitle;
  final IconData actionIcon;
  final VoidCallback onActionPressed;
  final IconData notificationIcon;
  final VoidCallback onNotificationPressed;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor = SColors.lightBlueAccent,
    this.titleColor = SColors.white,
    this.elevation = 4,
    this.centerTitle = true,
    required this.actionIcon,
    required this.onActionPressed,
    this.notificationIcon = Icons.notifications_none_sharp,
    required this.onNotificationPressed,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: centerTitle,
          backgroundColor: backgroundColor,
          elevation: elevation,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: SColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: onActionPressed,
                  icon: Icon(actionIcon, color: SColors.black, size: 18),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
            ),
            IconButton(
              onPressed: onNotificationPressed,
              icon: Icon(notificationIcon, color: SColors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
