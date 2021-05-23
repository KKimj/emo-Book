import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class Book with _$Book {
  // asin can be null
  factory Book({
    String? asin,
    required String isbn,

    // detail
    required List<String> authors,
    required String contents,
    required String datetime,
    required int price,
    required int sale_price,
    required String publisher,
    required String status,
    required String title,
    required String thumbnail,
    required List<String> translators,
    required String url,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

class BookReview {
  late String review_text;
  late String reviwer_name;
  late String review_summary;
  late String review_time;
  late String review_image;
  late num review_overall;
  late num review_upvote;
  late num review_downvote;
}

// class Book {
//   // id
//   late String asin, isbn;

//   // detail
//   late List<String> authors;
//   late String contents;
//   late String datetime;

//   late int price;
//   late int sale_price;

//   late String publisher;
//   late String status;

//   late String title;
//   late String thumbnail;
//   late String translators;

//   late String url;

//   // review
//   late List<BookReview> bookReviews;

//   Book({required String title}) {
//     this.title = title;
//   }
// }
