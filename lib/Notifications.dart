import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/NotificationsUI.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  static const String routeName = 'Notifications';
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Today",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                ),
              ),
              NotificationsUI(
                image: SImages.ali,
                title: "Ali Follows you",
                subtitle: "Ali has followed you you can follow back",
                timestamp: "10:05",
              ),
              NotificationsUI(
                image: SImages.uiUX,
                title: "UiUx2 Follows you",
                subtitle: "UiUx2 has followed you you can follow back",
                timestamp: "09:00",
              ),
              NotificationsUI(
                image: SImages.unknownProfileImage,
                title: "Sami Follows you",
                subtitle: "Sami has followed you you can follow back",
                timestamp: "09:50",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                ),
              ),
              NotificationsUI(
                image: SImages.abdullah,
                title: "Abdullah Follows you",
                subtitle: "Abdullah has followed you you can follow back",
                timestamp: "09:00",
              ),
              NotificationsUI(
                image: SImages.ahmad,
                title: "Alex Trumen  has posted a new photo",
                subtitle: "Music Fest Gala is happening at F-9 Park, Islamabad",
                timestamp: "09:20",

              ),
              NotificationsUI(
                image: SImages.bannerImage2,
                title: "Event happening near you at F-9  Park",
                subtitle: "Sami has followed you you can follow back",
                timestamp: "09:50",
              ),
            ],
          ),
        ));
  }
}
