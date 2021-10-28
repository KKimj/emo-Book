import 'dart:convert';

// Packages
import 'package:get/get.dart';
import 'package:books_finder/books_finder.dart';

class HistoryController extends GetxController {
  static HistoryController get to => Get.find<HistoryController>();

  List<String?> isbns = [];
  List<BookInfo?> bookinfo_list = [];
  List<String?> titles = [];
  List<double?> scores = [];
  int removedCount = 0;

  /// order = { 'average_rating', 'ratings_count' }
  Future<void> fetch(
      {int uid = 202169,
      int count = 5,
      int start_idx = 0,
      String order = "average_rating",
      bool isClear = false}) async {
    print("$uid , $count , $start_idx, $order");

    if (isClear) {
      isbns = [];
      bookinfo_list = [];
      titles = [];
      scores = [];
      removedCount = 0;
    }

    while (isbns.length < start_idx + count) {
      isbns.add(null);
    }

    while (bookinfo_list.length < start_idx + count) {
      bookinfo_list.add(null);
    }

    while (scores.length < start_idx + count) {
      scores.add(null);
    }

    while (titles.length < start_idx + count) {
      titles.add(null);
    }

    await HistoryProvider.to
        .fetch(
      uid: uid,
      count: count,
      start_idx: start_idx,
      order: order,
    )
        .then((value) async {
      print(value.bodyString);
      String responseString = value.body.toString();
      // Json String must be wrapped with double-quoted
      responseString = responseString.replaceAll("'", '"');
      // Parse to List with String
      List<dynamic> data_list = json.decode(responseString);
      print(data_list);

      for (var i = 0; i < data_list.length; i++) {
        List<dynamic> data = data_list[i];

        isbns[start_idx + i] = data[1].toString();
        queryBooks(
          data[0].toString(),
          maxResults: 1,
          orderBy: OrderBy.relevance,
        ).then((books) {
          if (books.isEmpty) {
            removedCount += 1;
            bookinfo_list.removeAt(start_idx + i);
            print('not-found!');
          } else {
            bookinfo_list[start_idx + i] = books[0].info
              ..averageRating = data[1];
          }
          update();
        });
      }
      update();
    });
  }
}

class HistoryProvider extends GetConnect {
  static HistoryProvider get to => Get.find<HistoryProvider>();

  Future<Response> fetch(
          {int uid = 202169,
          int count = 30,
          int start_idx = 0,
          String order = "average_rating"}) =>
      post(
          "https://asia-northeast3-emo-book-kr.cloudfunctions.net/history_v1", {
        "uid": uid,
        "count": count,
        "start_idx": start_idx + HistoryController.to.removedCount,
      });
}
