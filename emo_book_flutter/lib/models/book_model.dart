class Book {
  // id
  late String asin, isbn;

  // detail
  late String title;
  late String image;

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
