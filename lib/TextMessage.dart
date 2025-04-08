import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final String name;
  final String image;

  final List<Map<String, dynamic>> Chat = [
    {
      'message': 'Hello!',
      'isUser': false,
    },
    {
      'message': 'Hi there! How are you?',
      'isUser': true,
    },
    {
      'message': 'I am doing great, thanks!',
      'isUser': false,
    },
    {
      'message': 'That\'s awesome!',
      'isUser': true,
    },
    {
      'message': 'What are you up to?',
      'isUser': false,
    },
    {
      'message': 'Just chilling.',
      'isUser': true,
    },
    {
      'message': 'How about You?',
      'isUser': true,
    },
    {
      'message': 'Nothing special',
      'isUser': false,
    },
  ];

  TextMessage({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {},
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          Expanded(
            child: ListView.builder(
              itemCount: Chat.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                final chat = Chat[index];
                bool isUser = chat['isUser'];
                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: !isUser,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: isUser
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: !isUser,
                            child: Text(
                              name,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: isUser ? Colors.lightBlueAccent : Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              chat['message'],
                              style: TextStyle(color: isUser ? Colors.white : Colors.black),
                            ),
                          ),
                          const Text(
                            "Friday, 10:00 AM",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.keyboard_voice, color: Colors.blue),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    // keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      suffixIcon:
                          Icon(Icons.camera_alt_outlined, color: Colors.blue),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.blue),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
