import 'dart:typed_data';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/image_picker.dart';
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Uint8List? _image;
  List<String> interests = [
    "Books",
    "Music",
    "Colors",
    "Paint",
    "Hiking",
    "Travel",
    "read"
  ];

  void selectImage() async {
    Uint8List img = await picImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          backgroundImage: MemoryImage(_image!),
                          radius: 62,
                        )
                      : CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/follow images/unknown profile.jpg"),
                          radius: 62,
                        ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: selectImage,
                      icon: Icon(
                        Icons.add_a_photo,
                        color: SColors.black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            // Full Name Field
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Full Name",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: SColors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Name",
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Profession Field
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Profession",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: SColors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Email Field
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    "(Optional)",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: SColors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: SColors.grey),
                  ),
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Phone Number Field
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    "(Optional)",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: SColors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: SColors.grey),
                  ),
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Location",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 335,
                    maxHeight: 48,
                  ),
                  fillColor: SColors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: SColors.grey),
                  ),
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Biography Section
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Bio",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: 335,
                height: 141,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 15,
                  decoration: InputDecoration(
                    fillColor: SColors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: SColors.grey),
                    ),
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            /// Interests Section
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Interests",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: SColors.primary),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Wrap(
                  spacing: 5,
                  // runSpacing: 5,
                  children: interests
                      .map(
                        (interest) => Chip(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          label: Text(interest,
                              style: TextStyle(color: SColors.white)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: SColors.lightBlueAccent,
                          deleteIcon:
                              Icon(Icons.close, color: SColors.white, size: 18),
                          onDeleted: () {
                            setState(() {
                              interests.remove(interest);
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(310, 45),
            backgroundColor: SColors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: SColors.white,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Profile Updated Successfully! Go back',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: SColors.white),
                    ),
                  ],
                ),
                backgroundColor: SColors.green,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(20),
                elevation: 6,
                duration: Duration(seconds: 2),
              ),
            );
            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserDetails(
            //   userName: "Muhammad Ali",
            //   userImage: " assets/images/follow images/Ali.png",
            // )));
          },
          child: Text(
            "Update Profile",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: SColors.white),
          ),
        ),
      ),
    );
  }
}
