import 'package:flutter/material.dart';
import 'package:whatsapp_ui1/pages/chat_list/widgets/group.dart';
import 'package:whatsapp_ui1/pages/chat_list/widgets/private.dart';

class ChatItem extends StatefulWidget {
  final bool isPrivate;
  const ChatItem({Key? key, required this.isPrivate}) : super(key: key);

  @override
  _ChatItemState createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {

  @override
  Widget build(BuildContext context) {
    return (widget.isPrivate) ? PrivateItemChat() : GroupItemChat();
  }
}
