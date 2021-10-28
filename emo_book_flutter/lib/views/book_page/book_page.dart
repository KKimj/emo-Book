import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';

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
  BookPage({Key? key}) : super(key: key) {
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
}
