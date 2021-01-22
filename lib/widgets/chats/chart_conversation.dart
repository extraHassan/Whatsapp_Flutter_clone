import 'package:flutter/material.dart';
import 'package:whatsup_clone/widgets/chats/message_bubble.dart';

class ChatPane extends StatelessWidget {
  TextEditingController textEditingController;
  String message;

  @override
  Widget build(BuildContext context) {
    textEditingController = TextEditingController(text: message);
    final mediaQuery = MediaQuery.of(context);
    final AppBar appBar = AppBar(
      actions: <Widget>[
        Container(
          width: mediaQuery.size.width * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.videocam),
              Icon(Icons.call),
              Icon(Icons.more_vert),
            ],
          ),
        )
      ],
      title: Text('Fath allah'),
      leading: FittedBox(
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://scontent.frba3-1.fna.fbcdn.net/v/t1.0-9/80602333_2719908864733809_2367840372505182208_n.jpg?_nc_cat=105&_nc_sid=85a577&_nc_eui2=AeGXaWczUwL_Q6kdANSgaaDYgWa5APC8k5uBZrkA8LyTmxXN9Bfddc1aX5Lxjo3gO9Aw34Z_GiYxGve_kimuX4Bv&_nc_ohc=LaYF8Kt7dNcAX_1PAJQ&_nc_ht=scontent.frba3-1.fna&oh=deac976af01e8fa203fbccde2e29009c&oe=5F18EA0F',
              ),
            ),
          ],
        ),
      ),
    );
    final double chatPaneHeight =
        (mediaQuery.size.height - appBar.preferredSize.height) * 0.874;

    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Container(
          color: Colors.amber,
          height: mediaQuery.size.height - appBar.preferredSize.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png',
                      ),
                    ),
                  ),
                child: ListView(
                  children: <Widget>[
                    MessageBubble(
                      dateTime: DateTime.now().add(Duration(minutes: 12)),
                      isFrom: true,
                      senderName: 'Fath allah',
                      text: 'Sat, hani jay njiblik m3aya chi haja ? ',
                      color: Colors.blue[800],
                    ),
                    MessageBubble(
                      dateTime: DateTime.now().add(Duration(minutes: 16)),
                      isFrom: false,
                      senderName: 'me',
                      text: 'Chi sahfa dyal dera mderdra',
                      color: Colors.blue[800],
                    ),
                    MessageBubble(
                      dateTime: DateTime.now().add(Duration(minutes: 18)),
                      isFrom: true,
                      senderName: 'Fath allah',
                      text: 'vu.',
                      color: Colors.blue[800],
                    ),
                  ],
                ),
                ),
              ),
              Container(
//                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 9,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.only(left: 11, right: 11),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.insert_emoticon),
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                flex: 10,
                                child: TextField(
                                  showCursor: true,
                                  cursorColor:
                                      Theme.of(context).appBarTheme.color,
                                  controller: textEditingController,
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    hintText: 'Type a message',
                                    border: InputBorder.none,
                                  ),
                                  cursorWidth: 2,
                                  buildCounter: (BuildContext context,
                                          {int currentLength,
                                          int maxLength,
                                          bool isFocused}) =>
                                      null,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.attach_file),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.camera_alt),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).appBarTheme.color,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mic),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
