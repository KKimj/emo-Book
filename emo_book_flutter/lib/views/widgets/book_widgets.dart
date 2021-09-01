import 'dart:ui';
import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Models
import 'package:emo_book_flutter/models/book_model.dart';

class BookTile extends StatelessWidget {
  final Book book;
  BookTile({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onDoubleTap: () {},
        onLongPress: () {
          // print('onLongPress');
        },
        onHover: (_) {
          // print('onHover $_');
        },
        onTap: () {
          var isbn = book.isbn.substring(11);
          // Get.toNamed('/book', arguments: {
          Get.toNamed('/book/$isbn', arguments: {
            'isbn': isbn,
            'book': book,
          });
        },
        child: Column(
          children: [
            ListTile(
                title: Row(
              children: [
                Flexible(
                  child: Text(
                    book.title,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            )),
            ListTile(
              title: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        book.authors[0],
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        book.publisher,
                        style: Theme.of(context).textTheme.subtitle2,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        book.datetime.substring(0, 10),
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        book.status,
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                        '\\${book.price}',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                      ),
                      Text(
                        ' \\${book.sale_price}',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      child: book.thumbnail.length > 0.0
                          ? Image.network(book.thumbnail)
                          : Text('Not Image!')),
                  Container(
                    width: 30,
                  ),
                  Flexible(
                    child: Text(
                      book.contents,
                      overflow: TextOverflow.clip,
                      maxLines: 4,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Container(
                    width: 30,
                  ),
                ],
              ),
            ),
            Text('이 책의 추천은 어떠신가요?'),
            RatingBar.builder(
              initialRating: 5,
              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ),
    );
  }
}
