// Packages
import 'package:get/get.dart';

class EmotionController extends GetxController {
  static EmotionController get to => Get.find();

  late Map<String, bool> emotion_seletions;
  List<String> emotions = [
    'anger',
    'love',
    'joy',
    'surprise',
    'sadness',
    'fear',
  ];

  // map to bool seleted
  EmotionController() {
    emotion_seletions = {for (var emotion in emotions) emotion: false};
    update();
  }
  EmotionController.fromJson(Map<String, bool> json) {
    emotion_seletions = json;
    update();
  }
  Map<String, bool> get toJson => emotion_seletions;

  //toggle
  void toggle_emotion(String emotion) {
    // var seletion = emotion_seletions[emotion]!;
    // emotion_seletions[emotion] = !seletion;
    emotion_seletions[emotion] = !(emotion_seletions[emotion]!);
    update();
  }
}
