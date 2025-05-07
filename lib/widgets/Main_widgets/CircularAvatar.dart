import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final String? image;
  final IconData? icon;
  final Color iconColor;
  final double borderWidth;
  final Color borderColor;
  final String? name;
  final String? initials;
  final TextStyle? textStyle;
  final String? userName;
  // Constructor with required parameters
  const CircularAvatar(
      {super.key,
      this.size = 50.0,
      this.backgroundColor = SColors.grey,
      this.image,
      this.icon,
      this.iconColor = SColors.white,
      this.borderWidth = 2.0,
      this.borderColor = SColors.white,
      this.initials,
      this.name,
      this.textStyle,
      this.onTap,
      this.userName
      });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: size ?? 35,
            backgroundColor:
            backgroundColor ?? SColors.grey,
            backgroundImage: image != null ? AssetImage(image!) : const AssetImage(
                SImages.storyImage1
            ),
          ),
          if (name != null) ...[
            const SizedBox(
              width: 5,
            ),
            Text(name!)
          ]
          ],
      );
  }
}
