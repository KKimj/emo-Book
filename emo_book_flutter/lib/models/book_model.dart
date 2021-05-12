class Book {
  // id
  String asin, isbn;

  // detail
  String title;
  String image;

  // review
  List<BookReview> bookReviews;
}

class BookReview {
  String review_text;
  String reviwer_name;
  String review_summary;
  String review_time;
  String review_image;
  num review_overall;
  num review_upvote;
  num review_downvote;
}
