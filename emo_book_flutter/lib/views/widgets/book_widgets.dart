import 'package:flutter/material.dart';
import 'package:get/get.dart';

// model
import 'package:emo_book_flutter/models/book_model.dart';

class BookTile extends StatelessWidget {
  final Book book;
  BookTile({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onDoubleTap: () {
          print('double tapped');
        },
        onLongPress: () {
          print('onLongPress');
        },
        onHover: (_) {
          print('onHover $_');
        },
        onTap: () {
          print('tapped');
          Get.toNamed('/book');
        },
        child: Column(
          children: [
            ListTile(
                title: Row(
              children: [
                Text(book.title),
                Text(
                  book.title,
                  textAlign: TextAlign.end,
                ),
              ],
            )),
            ListTile(
                title: Row(
              children: [
                Text(book.title),
                Text(
                  book.title,
                  textAlign: TextAlign.end,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
