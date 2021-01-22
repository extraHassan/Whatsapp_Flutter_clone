import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CallCard extends StatelessWidget {
  final String callerName;
  final String callerPic;
  final DateTime dateTime;
  final String callType;
  final bool isVideoCall;

  CallCard({
    @required this.callerName,
    this.callerPic,
    @required this.dateTime,
    @required this.callType,
    this.isVideoCall,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
          title: Text(callerName),
          subtitle: Row(
            children: <Widget>[
              callType == 'call_received'
                  ? Icon(Icons.call_received)
                  : Icon(Icons.call_missed),
              Text(
                  '${DateFormat.jms().format(dateTime)}    ${DateFormat.MEd().format(dateTime)}'),
            ],
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              callerPic.toString(),
            ),
          ),
          trailing: Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Icon(
                isVideoCall == true ? Icons.videocam : Icons.call,
                size: 25,
                color: Theme.of(context).appBarTheme.color,
              ),
            ),
          )
          ),
      Divider(
        indent: 70,
        thickness: 1,
        endIndent: 13,
      )
    ]);
  }
}
