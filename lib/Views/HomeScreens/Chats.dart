import 'package:agora/Notifications.dart';
import 'package:agora/TextMessage.dart';
import 'package:agora/constants/app_colors.dart';
import 'package:agora/constants/app_gallery.dart';
import 'package:agora/widgets/Main_widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Map<String, dynamic>> chatData = [
    {
      "name": "Ali",
      "message": "Hey, how are you?",
      "time": "10:30 AM",
      "image": SImages.unknownProfileImage
    },
    {
      "name": "Friends Group",
      "message": "Typing...",
      "time": "11:15 AM",
      "image": SImages.family
    },
    {
      "name": "Abdullah",
      "message": "How is your day?",
      "time": "12:00 PM",
      "image": SImages.abdullah
    },
    {
      "name": "Jonathon Grey",
      "message": "Fixed Time for Meeting",
      "time": "12:00 PM",
      "image": SImages.person3
    },
    {
      "name": "Ahmad",
      "message": "Fixed Time for Meeting",
      "time": "12:00 PM",
      "image": SImages.ahmad
    },
    {
      "name": "Ali",
      "message": "Hey, how are you?",
      "time": "10:30 AM",
      "image": SImages.ali
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const SizedBox(),
        title: "Chats",
        actionIcon: Icons.add,
        onActionPressed: () {},
        onNotificationPressed: () {
          Navigator.pushNamed(context, Notifications.routeName);
        },
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: SizedBox(
                    height: 40,
                    width: 260,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        prefixIcon:
                            const Icon(Icons.search_sharp, color: SColors.grey),
                        fillColor: SColors.white,
                        filled: true,
                        hintText: "Search names, locations, tags, groups",
                        hintStyle: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 20),
                child: Container(
                  height: 40,
                  width: 44,
                  decoration: BoxDecoration(
                    color: SColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.vertical_distribute,
                        color: SColors.lightBlue),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Messages",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(width: 155),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Requests",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: SColors.black),
                  ),
                ),
              ),
            ],
          ),

          // Chat List UI with Clickable Navigation
          Expanded(
            child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextMessage(
                          name: chatData[index]["name"],
                          image: chatData[index]["image"],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage(chatData[index]["image"]!),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chatData[index]["name"]!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.done_all,
                                        color: Colors.blue, size: 15),
                                    const SizedBox(width: 5),
                                    Text(
                                      chatData[index]["message"]!,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            chatData[index]["time"]!,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250.0, bottom: 20),
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: SColors.primaryLight,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.create,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
