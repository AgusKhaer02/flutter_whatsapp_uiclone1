import 'package:flutter/material.dart';

class GroupItemChat extends StatelessWidget {
  const GroupItemChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black87,
            child: Icon(Icons.group),
          )
        ],
      ),
    );
  }
}
