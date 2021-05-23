import 'package:emo_book_flutter/core_packages.dart';

// model
import 'package:emo_book_flutter/models/book_model.dart';

// keys
import 'package:emo_book_flutter/app_keys.dart';

class BookController extends GetxController {
  static BookController get to => Get.find();
  var bookProver = _BookProvider();

  var books = [];

  Future<Book> get_book_isbn(String isbn) async {
    var book = await bookProver.getIsbnBook(isbn);
    print('book ${book.title}');
    return book;
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
