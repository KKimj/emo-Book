import 'package:books_finder/books_finder.dart';
import 'package:emo_book_flutter/controllers/user_controller.dart';
import 'package:emo_book_flutter/messages.dart';
import 'package:emo_book_flutter/views/widgets/bookinfo_widgets.dart';
import 'package:flutter/material.dart';

// packages
import 'package:get/get.dart';

// styles
import 'package:emo_book_flutter/styles.dart';

// controllers
import 'package:emo_book_flutter/controllers/recommand_controller.dart';

// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

class RecommandPage extends StatelessWidget {
  const RecommandPage({Key? key}) : super(key: key);

  Widget _buildEmotionSelectButton(String emotion) {
    return GetBuilder<RecommandController>(builder: (controller) {
      return Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton(
              style: RecommandController.to.emotions[emotion]!
                  ? Get.isDarkMode
                      ? Buttons.emotion_pressed_evlvated_dark
                      : Buttons.emotion_pressed_evlvated
                  : Get.isDarkMode
                      ? Buttons.emotion_unpressed_evlvated_dark
                      : Buttons.emotion_unpressed_evlvated,
              onPressed: () {
                if (RecommandController.to.emotions[emotion] == false) {
                  RecommandController.to.emotions[emotion] = true;
                } else {
                  RecommandController.to.emotions[emotion] = false;
                }
                print(RecommandController.to.emotions[emotion]);
                print(RecommandController.to.emotionsValue);

                RecommandController.to.update();
                RecommandController.to.fetch(
                  uid: int.parse(Get.parameters['uid'] ?? '202169'),
                  count: int.parse(Get.parameters['count'] ?? '5'),
                  start_idx: int.parse(Get.parameters['start_idx'] ?? '0'),
                  order: Get.parameters['order'] ?? "confidence",
                );
                Get.snackbar(
                    emotion, (Messages[emotion]!.toList()..shuffle()).first);
              },
              child: Text(
                emotion,
              )));
    });
  }

  Widget _buildEmotionSelector(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                ' 감정 선택',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline4!,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Wrap(
                  // direction: Axis.horizontal,
                  // alignment: WrapAlignment.start,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: <Widget>[
                    for (var emotion
                        in RecommandController.to.emotions.keys.toList())
                      _buildEmotionSelectButton(emotion)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          child: Text('정확도 순'),
          onTap: () {
            String uid = Get.parameters['uid'] ?? '202169';
            String order = 'confidence';
            Get.toNamed('/recommand?uid=$uid&order=$order');
          },
        ),
        InkWell(
          child: Text('예상 별점 순'),
          onTap: () {
            String uid = Get.parameters['uid'] ?? '202169';
            String order = 'score';
            Get.toNamed('/recommand?uid=$uid&order=$order');
          },
        ),
        InkWell(
          child: Text('리뷰 개수 순'),
          onTap: () {
            String uid = Get.parameters['uid'] ?? '202169';
            String order = 'ratings_count';
            Get.toNamed('/recommand?uid=$uid&order=$order');
          },
        ),
        InkWell(
          child: Text('평균 별점 순'),
          onTap: () {
            String uid = Get.parameters['uid'] ?? '202169';
            String order = 'average_rating';
            Get.toNamed('/recommand?uid=$uid&order=$order');
          },
        ),
      ],
    );
  }

  Widget _buildListView(BuildContext context) {
    return GetBuilder<RecommandController>(
      builder: (_) {
        return Column(
          children: <Widget>[
            for (BookInfo? bookinfo in _.bookinfo_list)
              bookinfo != null
                  ? Dismissible(
                      direction: DismissDirection.endToStart,
                      background: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, right: 10),
                        child: Container(
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.delete, color: Colors.white),
                                Text('추천에서 제거',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                          color: Colors.white,
                                        )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      key: UniqueKey(),
                      child: BookInfoTile(bookInfo: bookinfo),
                      onDismissed: (direction) {
                        _.removed_count += 1;
                        _.bookinfo_list.remove(bookinfo);
                        _.update();
                      },
                    )
                  : const SizedBox(
                      height: 150,
                      child: Center(child: CircularProgressIndicator())),
          ],
        );
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return GetBuilder<RecommandController>(builder: (_) {
      return NotificationListener<ScrollEndNotification>(
        onNotification: (scrollEnd) {
          var metrics = scrollEnd.metrics;
          if (metrics.atEdge) {
            if (metrics.pixels == 0)
              print('At top');
            else {
              print(RecommandController.to.bookinfo_list.length);
              print('At bottom');
              RecommandController.to.fetch(
                uid: int.parse(Get.parameters['uid'] ?? '202169'),
                count: int.parse(Get.parameters['count'] ?? '3'),
                start_idx: RecommandController.to.bookinfo_list.length,
                order: Get.parameters['order'] ?? "confidence",
              );
            }
          }
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
              _buildEmotionSelector(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ' 도서 추천',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline4!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GetBuilder<UserController>(builder: (_) {
                        return Text('${_.profile_name} 님을 위한 추천');
                      }),
                    ),
                  ]),
                ),
              ),
              _buildOrderSelector(),
              _buildListView(context),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    RecommandController.to.fetch(
      uid: int.parse(Get.parameters['uid'] ?? '202169'),
      count: int.parse(Get.parameters['count'] ?? '5'),
      start_idx: int.parse(Get.parameters['start_idx'] ?? '0'),
      order: Get.parameters['order'] ?? "confidence",
      isClear: true,
    );
    return Scaffold(
        body: SafeArea(
      child: _buildBody(context),
    ));
  }
}
