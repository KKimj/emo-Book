import 'package:flutter/material.dart';

import 'package:emo_book_flutter/models/book_model.dart';

class BookTile extends StatelessWidget {
  final Book book;
  BookTile(this.book);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: ListTile(
          title: Row(
            children: [
              Text(book.title),
            ],
          ),
        ),
      ),
    );
  }
}
