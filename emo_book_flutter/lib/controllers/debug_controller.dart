import 'package:emo_book_flutter/app_keys.dart';

// packages
import 'package:get/get.dart';
import 'package:books_finder/books_finder.dart';
import 'package:http/http.dart' as http;

// Controllers
import 'package:emo_book_flutter/controllers/emotion_controller.dart';



class DebugController extends GetxController {
  static DebugController get to => Get.find<DebugController>();

  bool get isWeb => GetPlatform.isWeb;
  bool get isDesktop => GetPlatform.isDesktop;
  bool get isMobile => GetPlatform.isMobile;
  bool get isAndroid => GetPlatform.isAndroid;
  bool get isIos => GetPlatform.isIOS;
  bool get isLinux => GetPlatform.isLinux;
  bool get isMacOS => GetPlatform.isMacOS;
  bool get isWindows => GetPlatform.isWindows;

  String get PlatformMessage {
    return 'isDesktop : ${DebugController.to.isDesktop}\n'
        'isWindows : ${DebugController.to.isWindows}\n'
        'isMacOS : ${DebugController.to.isMacOS}\n'
        'isLinux : ${DebugController.to.isLinux}\n'
        'isWeb : ${DebugController.to.isWeb}\n'
        'isMobile : ${DebugController.to.isMobile}\n'
        'isAndroid : ${DebugController.to.isAndroid}\n'
        'isIos : ${DebugController.to.isIos}\n';
  }

  String get EmotionMessage {
    return EmotionController.to.toJson.toString();
  }
}

class DebugProvider extends GetConnect {
  static DebugProvider get to => Get.find<DebugProvider>();

  // Get request
  Future<Response> getUser(int id) => get('http://youapi/users/$id');
  // Post request
  Future<Response> getBook(String isbn) => get(
      'https://dapi.kakao.com/v3/search/book?sort=accuracy&page=1&size=10&target=isbn&query=$isbn',
      headers: {'Authorization': 'KakaoAK ${AppKeys.kakaoRestApiKey}'});
  Future<Response> getDummyBook({String isbn = "1622664485"}) => get(
      'https://dapi.kakao.com/v3/search/book?sort=accuracy&page=1&size=10&target=isbn&query=1622664485',
      headers: {'Authorization': 'KakaoAK ${AppKeys.kakaoRestApiKey}'});

  Future<List<Book>> getDummyBook2() async {
    final List<Book> books = await queryBooks(
      'twilight',
      maxResults: 3,
      printType: PrintType.books,
      orderBy: OrderBy.relevance,
    );
    return books;
  } 

  Future<List<Book>> getDummyBook3() async {
    final List<Book> books = await queryBooks(
      '074995552X'
    );
    return books;
  } 

  Future<BookInfo?> getBookWithIsbn(String isbn) async {
    List<Book> books = await queryBooks(
      isbn,
      maxResults: 1,
      orderBy: OrderBy.relevance,
    );
    Book book = books[0];
    return book.info;
  }

  Future<Response> getGCloudTest() => get(
    'https://us-central1-emo-book-kr.cloudfunctions.net/recommand_test');

  Future<Response> getTable() => post(
    'https://asia-northeast3-emo-book-kr.cloudfunctions.net/recommend_v2',
    {"test_table": "1"});

  Future<Response> getAPI() =>  post(
    "https://asia-northeast3-emo-book-kr.cloudfunctions.net/recommend_v2", {});

  Future<Response> getJsonTest() =>  get(
    "https://asia-northeast3-emo-book-kr.cloudfunctions.net/json_test");

  
  Future<Response> getJsonTest2() =>  get(
    "https://asia-northeast3-emo-book-kr.cloudfunctions.net/json_test",
    query: {"abc" : "ABC"});
  
  Future<Response> getJsonTest3() =>  post(
    "https://asia-northeast3-emo-book-kr.cloudfunctions.net/json_test",
    {"abc" : "ABC"}); 
}