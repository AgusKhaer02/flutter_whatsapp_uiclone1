import 'package:flutter/material.dart';
import 'package:whatsapp_ui1/pages/call_list/call_list.dart';
import 'package:whatsapp_ui1/pages/chat_list/chat_list.dart';
import 'package:whatsapp_ui1/pages/status_list/status_list.dart';

class MainWA extends StatelessWidget {
  const MainWA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp by Agus"),
          actions: [
            IconButton(
              onPressed: () {
                print("search");
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                print("more");
              },
              icon: Icon(Icons.more_vert),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt_outlined),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("CHATS"),
                    Container(
                      margin: EdgeInsets.only(left: 0.5),
                      width: 20,
                      height: 20,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Tab(child: Text("STATUS")),
              Tab(child: Text("CALLS")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("CAMERA"),
            ),
            ChatList(),
            StatusList(),
            CallList()
          ],
        ),
      ),
    );
  }
}
