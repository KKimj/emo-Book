import 'dart:convert';

// Packages
import 'package:get/get.dart';
import 'package:books_finder/books_finder.dart';

class RecommandController extends GetxController {
  static RecommandController get to => Get.find<RecommandController>();

  Map<String, bool> emotions = {
    'anger': false,
    'fear': false,
    'joy': false,
    'love': false,
    'sadness': false,
    'surprise': false,
  };

  List<String?> isbns = [];
  List<BookInfo?> bookinfo_list = [];
  int removed_count = 0;

  int get emotionsValue {
    int value = 0;
    if (emotions['anger'] == true) {
      value |= 0x01;
    }
    if (emotions['fear'] == true) {
      value |= 0x02;
    }
    if (emotions['joy'] == true) {
      value |= 0x04;
    }
    if (emotions['love'] == true) {
      value |= 0x08;
    }
    if (emotions['sadness'] == true) {
      value |= 0x10;
    }
    if (emotions['surprise'] == true) {
      value |= 0x20;
    }
    return value;
  }

  /// order = { 'score', 'confidence', 'average_rating', 'ratings_count' }
  Future<void> fetch(
      {int uid = 202169,
      int count = 5,
      int start_idx = 0,
      String order = "confidence",
      bool isClear = false}) async {
    print("$uid , $count , $start_idx, $order");

    if (isClear) {
      isbns = [];
      bookinfo_list = [];
      removed_count = 0;
    }

    while (isbns.length < start_idx + count) {
      isbns.add(null);
    }

    while (bookinfo_list.length < start_idx + count) {
      bookinfo_list.add(null);
    }

    await RecommandProvider.to
        .fetch(
      uid: uid,
      count: count,
      start_idx: start_idx,
      order: order,
    )
        .then((value) async {
      String responseString = value.body.toString();
      // Json String must be wrapped with double-quoted
      responseString = responseString.replaceAll("'", '"');
      // Parse to List with String
      List<dynamic> data_list = json.decode(responseString);

      for (var i = 0; i < data_list.length; i++) {
        List<dynamic> data = data_list[i];

        isbns[start_idx + i] = data[1].toString();
        queryBooks(
          data[1].toString(),
          maxResults: 1,
          orderBy: OrderBy.relevance,
        ).then((books) {
          if (books.isEmpty) {
            removed_count += 1;
            bookinfo_list.removeAt(start_idx + i);
            print('not-found!');
          } else {
            bookinfo_list[start_idx + i] = books[0].info
              ..averageRating = data[5]
              ..ratingsCount = data[6];
          }
          update();
        });
      }
      update();
    });
  }
}

class RecommandProvider extends GetConnect {
  static RecommandProvider get to => Get.find<RecommandProvider>();

  Future<Response> fetch(
          {int uid = 202169,
          int count = 30,
          int start_idx = 0,
          String order = "confidence"}) =>
      post(
          "https://asia-northeast3-emo-book-kr.cloudfunctions.net/recommend_v3",
          {
            "uid": uid,
            "count": count,
            "start_idx": start_idx + RecommandController.to.removed_count,
            "emotions": RecommandController.to.emotionsValue,
            "order": order,
          });
  Future<Response> testfetch() =>
      post("https://asia-northeast3-emo-book-kr.cloudfunctions.net/json_test", {
        'emotions': RecommandController.to.emotionsValue,
      });
}
