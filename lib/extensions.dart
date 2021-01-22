import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

extension storyMaker on CircleAvatar {
  Widget padCircle(double pad) {
    return Padding(
      padding: EdgeInsets.all(pad),
      child: this,
    );
  }

  RotationTransition reverse(Animation<double> animation, double pad) {
    return RotationTransition(
      turns: animation,
      child: this.padCircle(pad),
    );
  }

  DashedCircle dashedCircle(
      Animation<dynamic> gap, Animation<double> animation, double pad) {
    return DashedCircle(
      gapSize: gap.value,
      dashes: 40,
      color: Color(0XFFED4634),
      child: this.reverse(animation, pad),
    );
  }

  Widget rotationTransition(Animation<double> base, Animation<dynamic> gap,
      Animation<double> animation, double pad, double height, double width) {
    return Container(
      height: height,
      width: width,
      child: RotationTransition(
        turns: base,
        child: this.dashedCircle(gap, animation, pad),
      ),
    );
  }
}
