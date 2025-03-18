import 'package:flutter/material.dart';

class TextSlidingAnimation extends StatelessWidget {
  const TextSlidingAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) => SlideTransition(
        position: slidingAnimation,
        child: Text('Reading news made easy'),
      ),
    );
  }
}
