import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsup_clone/states/model/contact.dart';
import 'package:whatsup_clone/states/model/conversation.dart';
import 'package:whatsup_clone/states/model/message.dart';
import 'package:whatsup_clone/widgets/appbars/appbar_icons.dart';
import 'package:whatsup_clone/widgets/wtsp_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp clone',
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            color: const Color(0xFF075E54),
          )),
      home: ChangeNotifierProvider(
        create: (context) => Conversation(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {


  static final FloatingActionButton _takePictureButton = FloatingActionButton(
    onPressed: () {},
    heroTag: null,
    child: Icon(Icons.camera_alt),
  );
  static final FloatingActionButton _editButton = FloatingActionButton(
    onPressed: () {},
    heroTag: null,
    isExtended: true,
    child: Icon(Icons.edit),
  );

  static final FloatingActionButton _callButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add_call),
  );

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Conversation buildConversation() {
  Conversation cv = Conversation(
    conversationId: 'CONV&é"',
    conversationTitle: 'groupe 1',
  );

  List<Message> messages = [
    Message('CONV&é', 0635135348, 'Hello Man', DateTime.now()),
    Message('CONV&é', 0635135348, 'ça va ? ', DateTime.now()),
    Message('CONV&é', 0635135348, 'How are u ? ', DateTime.now()),
    Message('CONV&é', 0655984537, 'HAMDOLAH', DateTime.now()),
  ];

  cv.setMessages = messages;

  List<Contact> participants = [
    Contact(0635135348, 'Hassan El-mzabi', 'NoImage', DateTime.now()),
    Contact(0655984537, 'PAPA', 'NoImage', DateTime.now()),
  ];

  cv.setParticipants = participants;
  return cv;
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Conversation> _conversations = [
    buildConversation(),
  ];
  int pageIndex = 0;
  final List<Widget> storyFloatingButtons = <Widget>[
    MyHomePage._takePictureButton,
    SizedBox(height: 12),
    Container(
      height: 40,
      width: 40,
      child: MyHomePage._editButton,
    )
  ];

  Widget build(BuildContext context) {
    final FloatingActionButton _newMessageButton = FloatingActionButton(
      onPressed: () {
        var conversationInfo = Provider.of<Conversation>(context);
      },
      child: Icon(Icons.message),
      heroTag: null,
    );

    final mediaQuery = MediaQuery.of(context);
    final AppBar appBar = AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).appBarTheme.color,
      title: Text('WhatsApp'),
      actions: <Widget>[AppBarIcons()],
    );

    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Container(
          height: mediaQuery.size.height - appBar.preferredSize.height,
          child: WtspPageView(
            pageIndex: pageIndex,
            conversations: _conversations,
            updateFloatingActionButton: updateFloatingActionButton,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: pageIndex == 0
            ? _newMessageButton
            : pageIndex == 1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: storyFloatingButtons.reversed.toList(),
                  )
                : MyHomePage._callButton,
      ),
    );
  }

  void updateFloatingActionButton(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void sortConversations(List<Conversation> conversations) {
    for (Conversation cv in conversations) {
      _sortMessagesOfConversation(cv);
    }
    conversations.sort((cv1, cv2) => cv1
        .getConversationMessages.last.dateTimeSent
        .compareTo(cv2.getConversationMessages.last.dateTimeSent));
  }

  void _sortMessagesOfConversation(Conversation conversation) {
    conversation.getConversationMessages
        .sort((msg1, msg2) => msg1.dateTimeSent.compareTo(msg2.dateTimeSent));
  }
}

class CameraScreen {}
