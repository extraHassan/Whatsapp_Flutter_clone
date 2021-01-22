import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageBubble extends StatelessWidget {
  final String senderName;
  final String text;
  final DateTime dateTime;
  final bool isFrom;
  final Color color;

  const MessageBubble(
      {Key key,
      this.senderName,
      this.text,
      this.dateTime,
      this.isFrom,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isFrom == true ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: isFrom == true ? Colors.white : Color(0xFFDCF8C6),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: isFrom == true
                  ? Radius.circular(0)
                  : Radius.elliptical(15, 25),
              topRight: isFrom == true
                  ? Radius.elliptical(25, 30)
                  : Radius.circular(0),
            ),
          ),
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: isFrom == true
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: <Widget>[
                    returnSender(senderName),
                    SizedBox(
                      height: 10,
                    ),
                    Text(text),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text(DateFormat.Hm().format(dateTime),
                    style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget returnSender(String senderName) {
    if (senderName != 'me') {
      return Text(
        senderName,
        style: TextStyle(color: color),
      );
    }
    return SizedBox();
  }
}
