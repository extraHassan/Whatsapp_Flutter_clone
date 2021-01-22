import 'package:whatsup_clone/states/model/conversation.dart';
import 'package:whatsup_clone/states/model/message.dart';

class ConversationDao {
  final Conversation _conversation;
  

  ConversationDao(this._conversation);

  void addMessage(Message message) {
    _conversation.addMessage(message);
  }

  void addMessages(List<Message> messages) {
    for (Message m in messages) {
      addMessage(m);
    }
  }

  void removeMessageByIndex(int index) {
    _conversation.removeMessage(index);
  }

  void removeMessageByContent(Message m) {
    List<Message> messages = _conversation.getConversationMessages;
    for (int i = 0; i < messages.length; i++) {
      if (messages[i].compareTo(m) == true) _conversation.removeMessage(i);
    }
  }

  void removeListOfMessagesByIndex(List<int> indexes) {
    indexes.map((ind) => this.removeMessageByIndex(ind));
  }

  void removeListOfMessageByContent(List<Message> messages) {
    messages.map((msg) => this.removeMessageByContent(msg));
  }
}
