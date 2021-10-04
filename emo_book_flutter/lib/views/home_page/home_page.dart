import 'dart:core';
import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';
import 'package:emo_book_flutter/controllers/book_controller.dart';

// Widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';
import 'package:emo_book_flutter/views/widgets/book_widgets.dart';
import 'package:emo_book_flutter/views/widgets/emotion_widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomePageBody(),
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
              // _HomeBanner(),
              _EmotionSeletor(),
              _BookListView(),
            ],
          ),
        );
      },
      tablet: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
              // _HomeBanner(),
              _EmotionSeletor(),
              _BookListView(),
            ],
          ),
        );
      },
      desktop: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
              // _HomeBanner(),
              _EmotionSeletor(),
              _BookListView(),
            ],
          ),
        );
      },
      watch: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
              Text('Please Increase Width!'),
            ],
          ),
        );
      },
    );
  }
}

class _HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300.0,
      child: Center(
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 400.0,
              color: Colors.red,
            ),
            Container(
              width: 400.0,
              color: Colors.blue,
            ),
            Container(
              width: 400.0,
              color: Colors.green,
            ),
            Container(
              width: 400.0,
              color: Colors.yellow,
            ),
            Container(
              width: 400.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class _EmotionSeletor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
        SizedBox(
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
                  for (var emotion in EmotionController.to.emotions)
                    EmotionButton(emotion_title: emotion)
                ],
              ),
            ],
          ),
        ),
      ],
    );

    // return SizedBox(
    //   height: 50,
    //   child: Container(
    //     child: Center(
    //         child: ListView(
    //       scrollDirection: Axis.horizontal,
    //       children: <Widget>[
    //         for (var emotion in EmotionController.to.emotions)
    //           EmotionButton(emotion_title: emotion)
    //       ],
    //     )),
    //   ),
    // );
  }
}

class _BookListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text(
              ' 도서 추천',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline4!,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GetBuilder<BookController>(builder: (_) {
          return GetBuilder<EmotionController>(builder: (_) {
            var books =
                BookController.to.get_dummy_books(EmotionController.to.toJson);
            // books.shuffle();

            return Container(
                child: Column(
              children: <Widget>[for (var book in books) BookTile(book: book)],
            ));
          });
        }),
      ],
    );
  }
}
