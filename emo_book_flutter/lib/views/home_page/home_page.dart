import 'package:emo_book_flutter/datas/dummy_books.dart';
import 'package:emo_book_flutter/views/widgets/book_tile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              Flexible(child: _BookListView()),
            ],
          ),
        );
      },
      tablet: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
            ],
          ),
        );
      },
      desktop: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
            ],
          ),
        );
      },
      watch: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              EmoAppBar(),
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
        child: Center(child: Text('Emotion seletion!')),
      ),
    );
  }
}

class _BookListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var books = DummyMainBooks;
    return SizedBox(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[for (var book in books) BookTile(book)],
    ));
  }
}
