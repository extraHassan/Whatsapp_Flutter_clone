import 'package:flutter/rendering.dart';

class Message {
  final String conversaionId;
  final double senderNumberPhone;
  final String content;
  final DateTime dateTimeSent;

  Message(
    this.conversaionId,
    this.senderNumberPhone,
    this.content,
    this.dateTimeSent,
  );

  get getConversationID => this.conversaionId;
  get getNumberPhoneOfSender => this.senderNumberPhone;
  get getContentOfMessage => this.content;
  get getDateTimeOfMessage => this.dateTimeSent;

  bool compareTo(Message m) {
    if (m.conversaionId == this.conversaionId &&
        m.senderNumberPhone == this.senderNumberPhone &&
        m.content == this.content &&
        m.dateTimeSent.compareTo(this.dateTimeSent) == 0) return true;
    return false;
  }
}
