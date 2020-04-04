import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

// Coloured Animated background
// Attributed to https://github.com/felixblaschke/simple_animations
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff363636), end: Colors.grey.shade900)),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff000000), end: Colors.blueGrey))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Opacity(
            opacity: 0.95,
            child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [animation["color1"], animation["color2"]])),
                    ),
          );
      },
    );
  }
}
