import 'package:flutter/material.dart';

class StatusList extends StatefulWidget {
  const StatusList({Key? key}) : super(key: key);

  @override
  _StatusListState createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  print("chat");
                },
                splashColor: Colors.black12,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 13, 15, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // avatar
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.black12,
                          backgroundImage: NetworkImage(
                              "https://cdn.thegentlemansjournal.com/wp-content/uploads/2014/06/tesla-TGJ.05-300x300-c-center.jpg"),
                        ),
                      ),

                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Status",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "49 minutes ago",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          print("more settings");
                        },
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Color(0xFF075E55),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 7, bottom: 7),
                width: double.infinity,
                color: Color(0xFFe5e9f0),
                child: Text(
                  "Recent updates",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black45),
                ),
              ),
              ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (builder, context) {
                    return InkWell(
                      onTap: () {
                        print("chat");
                      },
                      splashColor: Colors.black12,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 13, 15, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            // avatar
                            Container(
                              width: 60,
                              height: 60,
                              child: CircleAvatar(
                                backgroundColor: Colors.black12,
                                backgroundImage: NetworkImage(
                                    "https://images.photowall.com/products/45856/lady-fish-1.jpg?q=75&w=300&h=300"),
                              ),
                            ),

                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Eko Kurniawan Khannedy",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Today, 2:38 PM",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              Container(
                padding: EdgeInsets.only(left: 15, top: 7, bottom: 7),
                width: double.infinity,
                color: Color(0xFFe5e9f0),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black45),
                ),
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (builder, context) {
                  return InkWell(
                    onTap: () {
                      print("chat");
                    },
                    splashColor: Colors.black12,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 13, 15, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // avatar
                          Container(
                            width: 60,
                            height: 60,
                            child: CircleAvatar(
                              backgroundColor: Colors.black12,
                              backgroundImage: NetworkImage(
                                  "https://thumbnailer.mixcloud.com/unsafe/300x300/extaudio/5/1/9/1/3c54-294f-4a08-a7fb-320983da04e5"),
                            ),
                          ),

                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ramlan Afaril",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Today, 2:38 PM",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              print("create new text status");
            },
            backgroundColor: Colors.black26,
            child: Icon(Icons.edit),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              print("create new photo status");
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.photo_camera),
          ),
        ],
      ),
    );
  }
}
