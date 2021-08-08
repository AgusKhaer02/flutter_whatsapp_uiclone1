import 'package:flutter/material.dart';

class CallList extends StatefulWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  _CallListState createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (builder, context) {
          return CallItem(
            logDate: 'August 2, 3:12 PM',
            logIcon: Icons.call,
            logStatus: 'incoming',
            logName: 'Evan Lukius Pratama',
            urlImage:
                'https://www.surgery.wisc.edu/wp-content/uploads/2019/09/Boland_Thomas_422_400px-300x300.jpg"',
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              print("create new text status");
            },
            backgroundColor: Colors.black26,
            child: Icon(Icons.video_call),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              print("create new photo status");
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add_call),
          ),
        ],
      ),
    );
  }
}

class CallItem extends StatelessWidget {
  final String urlImage;
  final String logStatus;
  final String logName;
  final String logDate;
  final IconData logIcon;

  const CallItem(
      {Key? key,
      required this.logStatus,
      required this.logName,
      required this.logDate,
      required this.logIcon,
      required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                backgroundImage: NetworkImage(urlImage),
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
                    logName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      (logStatus == "incoming")
                          ? Icon(
                              Icons.call_received,
                              color: Colors.red,
                              size: 16,
                            )
                          : Icon(
                              Icons.call_made,
                              color: Colors.green,
                              size: 16,
                            ),
                      Text(
                        logDate,
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                print("call");
              },
              icon: Icon(
                logIcon,
                size: 24,
                color: Color(0xFF075E55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
