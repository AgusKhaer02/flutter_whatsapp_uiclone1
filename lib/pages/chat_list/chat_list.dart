import 'package:flutter/material.dart';
import 'package:whatsapp_ui1/pages/chat_list/widgets/chat_item.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (builder, context) {
          return ChatItem(
            isPrivate: true,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Create new Conversation");
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.chat),
      ),
    );
  }
}
