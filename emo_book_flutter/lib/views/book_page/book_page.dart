import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';
import 'package:easy_web_view/easy_web_view.dart';

// Widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';
import 'package:emo_book_flutter/views/widgets/book_widgets.dart';

// Models
import 'package:emo_book_flutter/models/book_model.dart';

// Dev
import 'package:emo_book_flutter/datas/dummy_books.dart';

// ignore: must_be_immutable
class BookPage extends StatelessWidget {
  Book book = DummyMainBooks[0];
  String isbn = DummyMainBooks[0].isbn;
  BookPage() {
    isbn = Get.parameters['isbn'] ?? Get.arguments?['isbn'] ?? isbn;
    book = Get.arguments?['book'] ??
        // BookController.to.get_book_isbn(isbn).then((value) {
        //   print('${value.title}');
        //   return value;
        // }) ??
        book;

    // todo change to fetch from isbn
    // print('title: '+book.title+'\tisbn: '+isbn);
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
          'test':
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36',
        },
        onLoaded: () {},
        // width: 100,
        // height: 100,
      ),
    );
  }
}
