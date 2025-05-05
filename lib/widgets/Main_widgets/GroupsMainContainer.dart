import 'package:agora/constants/app_colors.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart' show CircularAvatar;
import 'package:flutter/material.dart';

class GroupsMainContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String location;
  final int membersCount;
  final List<String> admins;
  final List<String> members;
  final int maxVisibleAvatars;

  const GroupsMainContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.location,
    required this.membersCount,
    required this.admins,
    required this.members,
    this.maxVisibleAvatars = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -110,
                left: 20,
                right: 20,
                child: Container(
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: SColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: SColors.black.withOpacity(0.2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "About",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$membersCount Members",
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        location,
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),

                      // Admins & Members Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Left Side: Admins
                          buildAvatarSection('Admins', admins),
                          // Right Side: Members
                          buildAvatarSection('Members', members),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }


  Widget buildAvatarSection(String title, List<String> avatars) {
    int extraCount = avatars.length > maxVisibleAvatars
        ? avatars.length - maxVisibleAvatars
        : 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
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
                        child: CircularAvatar(size: 18, image: entry.value),
                      ),
                    )),
            if (extraCount > 0)
              Transform.translate(
                offset: Offset(-maxVisibleAvatars * 10.0, 0),
                child: Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
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
