import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

// model
import 'package:emo_book_flutter/models/app_model.dart';

class EmotionController extends GetxController {
  static EmotionController get to => Get.find();

  late Map<String, bool> emotion_seletions;
  List<String> emotions = [
    'joy',
    'trust',
    'surprise',
    'expectation',
    'sadness',
    'fear',
    'repulsion',
    'anger',
  ];

  // map to bool seleted
  EmotionController() {
    emotion_seletions = {for (var emotion in emotions) emotion: false};
  }

  //toggle
  void toggle_seletion(String emotion) {
    // var seletion = emotion_seletions[emotion]!;
    // emotion_seletions[emotion] = !seletion;
    emotion_seletions[emotion] = !(emotion_seletions[emotion]!);
  }

  // toJson fromJson
  void fromJson(var json) {}
}
