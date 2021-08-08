import 'package:flutter/material.dart';
import 'package:whatsapp_ui1/pages/conversation_history/private/widgets/private_conv_item.dart';

class PrivateConversation extends StatefulWidget {
  final String opponentName;

  const PrivateConversation({Key? key, required this.opponentName})
      : super(key: key);

  @override
  _PrivateConversationState createState() => _PrivateConversationState();
}

class _PrivateConversationState extends State<PrivateConversation> {

  List<bool> testConv = [
    true,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Transform.translate(
          offset: Offset(-27,0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://uifaces.co/our-content/donated/N5PLzyan.jpg"),
            ),
            SizedBox(
              width: 5,
            ),
            Flexible(child: Text(widget.opponentName,overflow: TextOverflow.fade, maxLines: 1,)),
          ],),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Video Call");
            },
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {
              print("Voice Call");
            },
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {
              print("More");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFf9f5df),
        child: Column(
          children: [
            ListView.builder(
              itemCount: testConv.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PrivateConvItem(
                  isOpponentChats: testConv[index],
                );
              },
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Color(0xFFf9f5df),
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.emoji_emotions_rounded),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Type a message...',
                        border: InputBorder.none
                    ),
                  ),
                ),

                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.attachment),
                ),

                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.camera_alt),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


