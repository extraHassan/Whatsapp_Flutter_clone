import 'package:flutter/material.dart';
import 'package:whatsup_clone/states/model/conversation.dart';
import 'package:whatsup_clone/states/model/message.dart';
import 'chat_card.dart';

class ChatList extends StatelessWidget {
  final List<Conversation> conversations;

  ChatList({this.conversations}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      child: ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatCard(
            convTitle:'Personne numéro : $index',
            convImage: conversations[index].getConversationMessages.last.senderNumberPhone.toString(),
            lastMessage: Message('convID1324',32,'Afin a sat! ',DateTime.now()),
          );
        },
      ),
    );
  }
}
