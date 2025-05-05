import 'package:agora/widgets/Main_widgets/NotificationsUI.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
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
                image: "assets/images/follow images/Ali.png",
                title: "Ali Follows you",
                subtitle: "Ali has followed you you can follow back",
                timestamp: "10:05",
              ),
              NotificationsUI(
                image: "assets/images/follow images/UiUx2.png",
                title: "UiUx2 Follows you",
                subtitle: "UiUx2 has followed you you can follow back",
                timestamp: "09:00",
              ),
              NotificationsUI(
                image: "assets/images/follow images/unknown profile.jpg",
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
                image: "assets/images/follow images/Abdullah.png",
                title: "Abdullah Follows you",
                subtitle: "Abdullah has followed you you can follow back",
                timestamp: "09:00",
              ),
              NotificationsUI(
                image: "assets/images/follow images/Ahmad.png",
                title: "Alex Trumen  has posted a new photo",
                subtitle: "Music Fest Gala is happening at F-9 Park, Islamabad",
                timestamp: "09:20",

              ),
              NotificationsUI(
                image: "assets/images/image 7.png",
                title: "Event happening near you at F-9  Park",
                subtitle: "Sami has followed you you can follow back",
                timestamp: "09:50",
              ),
            ],
          ),
        ));
  }
}
