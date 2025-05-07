import 'package:agora/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final Icon? rightIcon;
  final VoidCallback? onRightIconPressed;
  final Widget? leading;
  final Widget? widget;


  const AppBarCustom(
      {Key? key,
      this.widget,
      required this.title,
      this.onBackPressed,
      this.backgroundColor,
      this.actions,
      this.rightIcon,
      this.onRightIconPressed,
        this.leading
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 8),
        child: Container(
          width: 29,
          height: 29,
          decoration: BoxDecoration(
            color: SColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: SColors.grey),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.1),
            //     blurRadius: 2,
            //     offset: const Offset(0, 2),
            //   ),
            // ],
          ),
          child: Center(
            child: IconButton(
              onPressed: onBackPressed ?? () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new,
                  size: 18, color: SColors.black),
              splashRadius: 20,
            ),
          ),
        ),
      ),
      actions: rightIcon != null
          ? [
              IconButton(
                  onPressed: onRightIconPressed ?? () {}, icon: rightIcon!)
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
