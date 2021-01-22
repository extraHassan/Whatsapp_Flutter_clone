import 'package:flutter/material.dart';
import 'package:whatsup_clone/extensions.dart';

class StoryCard extends StatefulWidget {
  @override
  _StoryCardState createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard>
    with SingleTickerProviderStateMixin {
  /// Variables
  Animation gap;
  Animation base;
  Animation reverse;
  AnimationController controller;

// Init
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  /// Dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/37/8f/fa/378ffa7b4bc07f190ee35f85ed816377.jpg",
            ),
          ).rotationTransition(base, gap, reverse, 5.0, 60, 60),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: Text('Une Personne X'),
                  subtitle: Text('22 minutes ago'),
                ),
                Divider(
                  thickness: 1.2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
