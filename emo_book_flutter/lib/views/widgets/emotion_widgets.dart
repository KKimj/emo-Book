import 'package:flutter/material.dart';

class EmotionButton extends StatelessWidget {
  late final String emotion_title;

  EmotionButton({required this.emotion_title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {}, child: Text(emotion_title));
  }
}
