import 'package:flutter/material.dart';

// widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';
import 'package:emo_book_flutter/views/widgets/book_widgets.dart';

// controllers
import 'package:emo_book_flutter/controllers/book_controller.dart';

// models
import 'package:emo_book_flutter/models/book_model.dart';

class BookPage extends StatelessWidget {
  // late final Book book;
  // bool is_isbn = true;
  // http get mothod to modify is_isbn -> false, e.g., ?isbn=false or ?asin=true

  final String bookid;
  BookPage({required this.bookid});

  final Book book = BookController.to.get_book_isbn('test');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            EmoAppBar(),
            _BookPageBody(
              book: book,
            ),
          ],
        ),
      ),
    );
  }
}

class _BookPageBody extends StatelessWidget {
  final Book book;

  _BookPageBody({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BookTile(
        book: book,
      ),
    );
  }
}
