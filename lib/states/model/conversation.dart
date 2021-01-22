import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import 'contact.dart';
import 'message.dart';

class Conversation with ChangeNotifier {
  final String conversationId;
  String conversationTitle;
  List<Contact> _participants;
  List<Message> _messages;

  Conversation({this.conversationId, this.conversationTitle});

  get getConversationMemebers => this._participants;
  get getConversationMessages => this._messages;
  get getConversationId => this.conversationId;
  get getConversationTitle => this.conversationTitle;

  set updateConversationTitle(String convTitle) => this.conversationTitle = convTitle;
  set setParticipants(List<Contact> contacts) => this._participants = contacts;
  set setMessages(List<Message> messages) => this._messages = messages;


  addMessage(Message newMessage){
    this._messages.add(newMessage);
    notifyListeners();

  }
  removeMessage(int index){
    this._messages.removeAt(index);
    notifyListeners();
  }

  addParticipant(Contact contact){
    this._participants.add(contact);
    notifyListeners();
  }

  removeContact(int index){
    this._participants.removeAt(index);
    notifyListeners();
  }

}
