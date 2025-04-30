import 'package:flutter/material.dart';
import 'package:agora/widgets/CircularAvatar.dart';

class VisitorsAvatar extends StatelessWidget {
  final String title;
  final List<String> avatars;
  final int maxVisibleAvatars;
  final double avatarSize;
  final TextStyle? titleStyle;

  const  VisitorsAvatar({
    super.key,
    required this.title,
    required this.avatars,
    this.maxVisibleAvatars = 4,
    this.avatarSize = 18,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    int extraCount = avatars.length > maxVisibleAvatars
        ? avatars.length - maxVisibleAvatars
        : 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle ?? const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            ...avatars
                .take(maxVisibleAvatars)
                .toList()
                .asMap()
                .entries
                .map((entry) => Transform.translate(
              offset: Offset(-entry.key * 10.0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: CircularAvatar(size: avatarSize, image: entry.value),
              ),
            )),
            if (extraCount > 0)
              Transform.translate(
                offset: Offset(-maxVisibleAvatars * 10.0, 0),
                child: Container(
                  width: 20,
                  height: avatarSize,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Text(
                    "+$extraCount",
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
