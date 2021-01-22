import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsup_clone/states/model/message.dart';
import 'package:whatsup_clone/widgets/chats/chart_conversation.dart';

class ChatCard extends StatelessWidget {
  final String convTitle;
  final Message lastMessage;
  final String convImage;

  const ChatCard({Key key, this.convTitle, this.lastMessage, this.convImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ChatPane()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 0),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xFFECE5DD)))),
        child: ListTile(
          title: Text(convTitle),
          subtitle: Text(lastMessage.content),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.icone-png.com/png/3/2625.png',
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(DateFormat.Hm().format(lastMessage.dateTimeSent)),
              Icon(Icons.volume_off)
            ],
          ),
        ),
      ),
    );
  }
}
