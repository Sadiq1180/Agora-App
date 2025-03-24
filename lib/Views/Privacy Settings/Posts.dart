import 'package:agora/widgets/AppBarCustom.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  final _value2 = "Everyone";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Posts"),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Text("Customize your Search  settings so that only people you allow will be able.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20,top: 10),
            child: Text("• React to your post.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20),
            child: Text("• Comment on your post.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20),
            child: Text("• Share your post.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 20),
            child: Text("• Events you are hosting near in future.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20,top: 20),
            child: DropdownButtonFormField(
                dropdownColor: Colors.white,
                icon: Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                value: _value2,
                items: [
                  DropdownMenuItem(
                      value: "Everyone",
                      child: Text(
                        "Everyone",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  DropdownMenuItem(
                      value: "Only you",
                      child: Text(
                        "Only you",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                  DropdownMenuItem(
                      value: "Only Friends",
                      child: Text(
                        "Only Friends",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )),
                ],
                onChanged: (v) {}),
          )
        ],
      ),
    );
  }
}
