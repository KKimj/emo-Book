// Packages
import 'package:emo_book_flutter/core_packages.dart';
import 'package:books_finder/books_finder.dart' as books_finder;


// Models
import 'package:emo_book_flutter/models/book_model.dart';

// Keys
import 'package:emo_book_flutter/app_keys.dart';

// Dev
import 'package:emo_book_flutter/datas/dummy_books.dart';

class BookController extends GetxController {
  static BookController get to => Get.find<BookController>();
  var bookProver = _BookProvider();

  var books = [];

  Future<Book> get_book_isbn(String isbn) async {
    var book = await bookProver.getIsbnBook(isbn);
    print('book ${book.title}');
    return book;
  }

  List<Book> get_dummy_books(Map<String, bool> emotion_seletions) {
    // Map<String, bool> get toJson => emotion_seletions;
    // emotion_seletions = EmotionController.to.toJson;
    var books = DummyMainBooks;
    books.shuffle();
    // update();
    print('Shuffled!');
    return books;
  }

  List<Book> get_books(Map<String, bool> emotion_seletions) {
    // TODO
    return DummyMainBooks;
  }


  Future<books_finder.BookInfo?> getBookWithIsbn(String isbn) async {
    List<books_finder.Book> books = await books_finder.queryBooks(
      isbn,
      maxResults: 1,
      orderBy: books_finder.OrderBy.relevance,
    );
    books_finder.Book book = books[0];
    return book.info;
  }
}

class _BookProvider extends GetConnect {
  Future<Response> getBook(String isbn) => get(
      'https://dapi.kakao.com/v3/search/book?sort=accuracy&page=1&size=10&query=$isbn&target=isbn',
      headers: {'Authorization': 'KakaoAK $AppKeys.kakaoRestApiKey'});
  Future<Book> getIsbnBook(String isbn) async {
    var response = await get(
        'https://dapi.kakao.com/v3/search/book?sort=accuracy&page=1&size=10&query=$isbn&target=isbn',
        headers: {'Authorization': 'KakaoAK $AppKeys.kakaoRestApiKey'});
    return Book.fromJson(response.body['document'][0]);
  }
}
