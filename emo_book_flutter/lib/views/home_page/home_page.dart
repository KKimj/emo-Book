import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

// controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';
import 'package:emo_book_flutter/views/widgets/book_widgets.dart';
import 'package:emo_book_flutter/views/widgets/emotion_widgets.dart';

// dev
import 'package:emo_book_flutter/datas/dummy_books.dart';
import 'package:emo_book_flutter/models/book_model.dart';

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
              _HomeBanner(),
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
              Text('Please Reduce Width!'),
            ],
          ),
        );
      },
      desktop: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
              Text('Please Reduce Width!'),
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
    return SizedBox(
      height: 400,
      child: Container(
        color: Colors.black26,
        child: Center(child: Text('Home Banner')),
      ),
    );
  }
}

class _EmotionSeletor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        color: Colors.black26,
        child: Center(
            child: Row(
          children: <Widget>[
            for (var emotion in EmotionController.to.emotions)
              EmotionButton(emotion_title: emotion)
          ],
        )),
      ),
    );
  }
}

class _BookListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var books = DummyMainBooks;
    return Container(
        child: Column(
      children: <Widget>[for (var book in books) BookTile(book: book)],
    ));
  }
}
