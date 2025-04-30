import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Color? titleColor;
  final FontWeight? weight;
  final Widget? trailingWidget;
  final Color? dividerColor;

  const SettingWidget({
    super.key,
    required this.title,
    this.onTap,
    this.titleColor,
    this.weight,
    this.trailingWidget,
    this.dividerColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: weight ?? FontWeight.w300,
                    color: titleColor,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: trailingWidget ?? Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),

            )
          ],
        ),
        Divider(
          height: 20,
          color: dividerColor ?? Colors.grey,
          thickness: 1,
        )
      ],
    );
  }
}


