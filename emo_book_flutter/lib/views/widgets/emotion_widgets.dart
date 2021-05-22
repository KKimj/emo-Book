import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

class EmotionButton extends StatelessWidget {
  late final String emotion_title;

  EmotionButton({required this.emotion_title});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmotionController>(
      builder: (_) {
        return ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: EmotionController.to.emotion_seletions[emotion_title]!
                    ? Colors.lightBlueAccent
                    : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            onPressed: () {
              EmotionController.to.toggle_emotion(emotion_title);
              print(emotion_title +
                  ' is ${EmotionController.to.emotion_seletions[emotion_title]}');
              Get.snackbar(emotion_title,
                  ' is ${EmotionController.to.emotion_seletions[emotion_title]}');
            },
            child: Text(emotion_title));
      },
    );
  }
}
