import 'package:emo_book_flutter/core_packages.dart';

// controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';

// model
import 'package:emo_book_flutter/models/book_model.dart';

// keys
import 'package:emo_book_flutter/app_keys.dart';

// dev
import 'package:emo_book_flutter/datas/dummy_books.dart';

class BookController extends GetxController {
  static BookController get to => Get.find();
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
