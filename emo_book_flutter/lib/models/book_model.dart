class Book {
  // id
  late String asin, isbn;

  // detail
  late List<String> authors;
  late String contents;
  late String datetime;

  late int price;
  late int sale_price;

  late String publisher;
  late String status;

  late String title;
  late String thumbnail;
  late String translators;

  late String url;

  // review
  late List<BookReview> bookReviews;

  Book({required String title}) {
    this.title = title;
  }
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
