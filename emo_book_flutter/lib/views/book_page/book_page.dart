import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_web_view/easy_web_view.dart';
// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';
import 'package:emo_book_flutter/views/widgets/book_widgets.dart';

// controllers
import 'package:emo_book_flutter/controllers/book_controller.dart';

// models
import 'package:emo_book_flutter/models/book_model.dart';

// dev
import 'package:emo_book_flutter/datas/dummy_books.dart';

// ignore: must_be_immutable
class BookPage extends StatelessWidget {
  late Book book;
  late String isbn;
  BookPage({
    String? isbn,
    Book? book,
  }) {
    this.isbn = Get.arguments?['isbn'] ??
        Get.parameters['isbn'] ??
        DummyMainBooks[0].isbn;
    // print('${Get.arguments?['isbn']}');
    // print('${Get.parameters['isbn']}');

    // todo change to fetch from isbn
    this.book = Get.arguments?['book'] ?? DummyMainBooks[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            EmoAppBar(),
            _BookPageBody(),
            _BookPageWebView(),
          ],
        ),
      ),
    );
  }

  Widget _BookPageBody() {
    return Container(
      child: BookTile(
        book: book,
      ),
    );
  }

  Widget _BookPageWebView() {
    return Flexible(
      child: EasyWebView(
        src: book.url,
        key: ValueKey('easywebview${book.isbn}'),
        isHtml: false,
        isMarkdown: false,
        convertToWidgets: false,
        headers: {
          'user-agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36',
          'User-Agent':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36',
        },
        onLoaded: () {},
        // width: 100,
        // height: 100,
      ),
    );
  }
}
