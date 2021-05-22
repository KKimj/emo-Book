import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// styles
import 'package:emo_book_flutter/styles.dart';

class EmotionButton extends StatelessWidget {
  late final String emotion_title;

  EmotionButton({required this.emotion_title});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmotionController>(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton(
              style: EmotionController.to.emotion_seletions[emotion_title]!
                  ? Buttons.emotion_pressed_evlvated
                  : Buttons.emotion_unpressed_evlvated,
              onPressed: () {
                EmotionController.to.toggle_emotion(emotion_title);
                print(emotion_title +
                    ' is ${EmotionController.to.emotion_seletions[emotion_title]}');
                Get.snackbar(emotion_title,
                    ' is ${EmotionController.to.emotion_seletions[emotion_title]}');
              },
              child: Text(
                emotion_title,
              )),
        );
      },
    );
  }
}
