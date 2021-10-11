import 'package:emo_book_flutter/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// Styles
import 'package:emo_book_flutter/styles.dart';

// Messages
import 'package:emo_book_flutter/messages.dart';

class EmotionButton extends StatelessWidget {
  late final String emotion_title;

  EmotionButton({required this.emotion_title});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (_) {
      return GetBuilder<EmotionController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                style: EmotionController.to.emotion_seletions[emotion_title]!
                    ? Get.isDarkMode
                        ? Buttons.emotion_pressed_evlvated_dark
                        : Buttons.emotion_pressed_evlvated
                    : Get.isDarkMode
                        ? Buttons.emotion_unpressed_evlvated_dark
                        : Buttons.emotion_unpressed_evlvated,
                onPressed: () {
                  EmotionController.to.toggle_emotion(emotion_title);
                  print(emotion_title +
                      ' is ${EmotionController.to.emotion_seletions[emotion_title]}');
                  Get.snackbar(emotion_title,
                      (Messages[emotion_title]!.toList()..shuffle()).first);
                },
                child: Text(
                  emotion_title,
                )),
          );
        },
      );
    });
  }
}
