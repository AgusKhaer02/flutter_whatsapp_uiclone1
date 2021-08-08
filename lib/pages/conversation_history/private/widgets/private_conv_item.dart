import 'package:flutter/material.dart';

class PrivateConvItem extends StatelessWidget {
  final bool isOpponentChats;

  const PrivateConvItem({Key? key, required this.isOpponentChats})
      : super(key: key);

  Widget opponentItem() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: Container(
          color: Color(0xFFf9ffff),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("gus, main yuk kesini, ada makanan nih"),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Text(
                  "12:10 PM",
                  style: TextStyle(color: Colors.black26),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myItem() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: Container(
            color: Color(0xFFCAF5A3),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("yuklah gasss..."),
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "12:13 PM",
                    style: TextStyle(color: Colors.black26),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Icon(
                    Icons.done_all,
                    size: 20,
                    color: Colors.black26,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [(isOpponentChats) ? opponentItem() : myItem()],
    );
  }
}
