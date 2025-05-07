import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/CircularAvatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:another_flushbar/flushbar.dart';

class memberContainer extends StatelessWidget {
  final String? name;
  final String? userName;
  final String? profileImage;

  const memberContainer(
      {super.key, this.name, this.userName, this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 67,
        width: 335,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: SColors.white),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: CircularAvatar(
                image:
                    profileImage ?? SImages.person2,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name ?? "Muhammad Hasan",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    userName ?? "@hasan",
                    style: const TextStyle(
                        fontSize: 8, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      height: 180,
                      decoration: const BoxDecoration(
                        color: SColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                SizedBox(width: 16),
                                SvgPicture.asset(
                                  'assets/images/Svg/adm.svg',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 12),
                                TextButton(
                                  onPressed: () {
                                    Flushbar(
                                      message: "Successfully make admin",
                                      duration: Duration(seconds: 3),
                                      flushbarPosition: FlushbarPosition.TOP,
                                      backgroundColor: SColors.secondaryDarkGreen,
                                      margin: EdgeInsets.all(8),
                                      borderRadius: BorderRadius.circular(8),
                                    ).show(context);

                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: Text(
                                    "Make Group Admin",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: SColors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                SizedBox(width: 16),
                                SvgPicture.asset(
                                  'assets/images/Svg/rem.svg',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 12),
                                TextButton(
                                  onPressed: () {
                                    Flushbar(
                                      message: "Successfully removed member",
                                      duration: Duration(seconds: 3),
                                      flushbarPosition: FlushbarPosition.TOP,
                                      backgroundColor: SColors.error,
                                      margin: EdgeInsets.all(8),
                                      borderRadius: BorderRadius.circular(8),
                                    ).show(context);
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: Text(
                                    "Remove From Group",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: SColors.error,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.more_vert),
            )
          ],
        ),
      ),
    );
  }
}
