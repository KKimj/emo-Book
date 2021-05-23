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
                Text(
                  book.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            )),
            ListTile(
              title: Row(
                children: [
                  Text(book.authors[0]),
                  paddingAll(10.0),
                  Text(
                    book.publisher,
                    textAlign: TextAlign.end,
                  ),
                  paddingAll(10.0),
                  Text(
                    book.status,
                    textAlign: TextAlign.end,
                  ),
                  paddingAll(10.0),
                  Text(
                    '가격 : ${book.sale_price}',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(child: Image.network(book.thumbnail)),
                ],
              ),
            ),
            Text(
              book.datetime,
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
