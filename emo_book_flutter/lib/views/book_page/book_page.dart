import 'package:emo_book_flutter/views/book_page/book_page_body.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BookPageBody(),
      ),
    );
  }
}
