import 'package:flutter/material.dart';
import 'package:whatsup_clone/widgets/stories/story_card.dart';

class StoryList extends StatelessWidget {
  final String label;

  StoryList(this.label);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Container(
          alignment: Alignment.centerLeft,
          height: 30,
          width: double.infinity,
          color: Colors.grey[400].withOpacity(0.6),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ),
        ),
        subtitle: Container(
          height: 400,
          child: ListView(
            children: <Widget>[
              StoryCard(),
              StoryCard(),
              StoryCard(),
              StoryCard(),
              StoryCard(),
              StoryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
