import 'package:books_finder/books_finder.dart';
import 'package:emo_book_flutter/controllers/history_controller.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';
import 'package:emo_book_flutter/core_packages.dart';
import 'package:emo_book_flutter/views/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);
  Widget _buildReviewCard(BuildContext context, int index) {
    return GetBuilder<HistoryController>(builder: (_) {
      BookInfo? bookInfo = _.bookinfo_list[index];
      if (bookInfo == null) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      dynamic thumbnail = bookInfo.imageLinks['thumbnail'] ??
          bookInfo.imageLinks['smallThumbnail'];
      return InkWell(
        child: GridTile(
          header: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('책 제목 : ${bookInfo.title}')),
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: thumbnail != null
                      ? Image.network(thumbnail.toString())
                      : const SizedBox()),
            ),
          ),
          footer: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                RatingBar.builder(
                  initialRating: bookInfo.averageRating,
                  minRating: 0.5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildGrid(BuildContext context) {
    return GetBuilder<HistoryController>(builder: (_) {
      return NotificationListener<ScrollEndNotification>(
        child: Flexible(
          child: Center(
            child: GridView.builder(
                itemCount: _.bookinfo_list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: GetPlatform.isMobile ? 1 : 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return _buildReviewCard(context, index);
                }),
          ),
        ),
        onNotification: (scrollEnd) {
          var metrics = scrollEnd.metrics;
          if (metrics.atEdge) {
            if (metrics.pixels == 0)
              print('At top');
            else {
              print(HistoryController.to.bookinfo_list.length);
              print('At bottom');
              HistoryController.to.fetch(
                uid: UserController.to.profile_uid,
                count: HistoryController.to.bookinfo_list[
                            HistoryController.to.bookinfo_list.length - 1] !=
                        null
                    ? 10
                    : 0,
                start_idx: HistoryController.to.bookinfo_list.length,
              );
            }
          }
          return true;
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    HistoryController.to.fetch(
      uid: UserController.to.profile_uid,
      count: 10,
      isClear: true,
    );
    return Scaffold(
      body: Column(
        children: [
          EmoAppBar(),
          _buildGrid(context),
        ],
      ),
    );
  }
}
