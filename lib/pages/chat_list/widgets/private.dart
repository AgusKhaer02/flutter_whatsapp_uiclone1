import 'package:flutter/material.dart';
import 'package:whatsapp_ui1/pages/conversation_history/private/private_conversation.dart';

class PrivateItemChat extends StatelessWidget {
  const PrivateItemChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return PrivateConversation(opponentName: "Ramlan Afaril");
            },
          ),
        );
      },
      splashColor: Colors.black12,
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 13, 15, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            // avatar
            Container(
              width: 65,
              height: 65,
              child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  backgroundImage: NetworkImage(
                      "https://uifaces.co/our-content/donated/N5PLzyan.jpg")),
            ),

            SizedBox(
              width: 15,
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ramlan Afaril",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "2/8/2021",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "+6280808080 : Terima Kasih pak, infonya semoga menjadi amal jariyah aminnn",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black45, fontSize: 16),
                        ),
                      ),
                      Icon(
                        Icons.push_pin_rounded,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.black12,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
