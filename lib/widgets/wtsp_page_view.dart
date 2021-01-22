// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_clone/states/model/conversation.dart';

// import 'package:whatsup_clone/widgets/calls/call_card.dart';
import 'package:whatsup_clone/widgets/calls/call_list.dart';
import 'package:whatsup_clone/widgets/chats/chat_list.dart';
import 'package:whatsup_clone/widgets/second_appbar.dart';
import 'package:whatsup_clone/widgets/stories/story_list.dart';

// import 'camera/camera_controller.dart';

class WtspPageView extends StatefulWidget {
  final List<Conversation> conversations;
  final Function updateFloatingActionButton;
  final int pageIndex;

  WtspPageView({
    this.conversations,
    this.updateFloatingActionButton,
    this.pageIndex,
  });

  @override
  _WtspPageViewState createState() => _WtspPageViewState();
}

class _WtspPageViewState extends State<WtspPageView> {
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    return LayoutBuilder(builder: (context, constraint) {
      return Column(
        children: <Widget>[
          Container(
            height: constraint.maxHeight * 0.06,
            child: SeconderyAppBar(
              updateCurrentPageIndex: widget.updateFloatingActionButton,
              activeMenu: widget.pageIndex,
            ),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 4, spreadRadius: 0.1)],
            ),
          ),
          Container(
            height: constraint.maxHeight * 0.94,
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (pageIndex) {
                widget.updateFloatingActionButton(pageIndex);
              },
              controller: _pageController,
              children: [
                Scrollbar(
                  controller: _scrollController,
                  isAlwaysShown: false,
                  child: ChatList(conversations: widget.conversations),
                ),
                Scrollbar(
                  controller: _scrollController,
                  isAlwaysShown: false,
                  child: ListView(
                    controller: _scrollController,
                    children: <Widget>[
                      StoryList('Recent updates'),
                      StoryList('Viewed updates')
                    ],
                  ),
                ),
                Scrollbar(
                  controller: _scrollController,
                  isAlwaysShown: false,
                  child: CallList(),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
