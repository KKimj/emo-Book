import 'package:emo_book_flutter/core_packages.dart';

// model
import 'package:emo_book_flutter/models/book_model.dart';

class BookController extends GetxController {
  static BookController get to => Get.find();

  var books = [];

  Book get_book_isbn(String isbn) {
    late var book;
    book = Book(title: '소나기');
    return book;
  }
}
