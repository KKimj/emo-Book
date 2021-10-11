// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call(
      {String? asin,
      required String isbn,
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
      required String url}) {
    return _Book(
      asin: asin,
      isbn: isbn,
      authors: authors,
      contents: contents,
      datetime: datetime,
      price: price,
      sale_price: sale_price,
      publisher: publisher,
      status: status,
      title: title,
      thumbnail: thumbnail,
      translators: translators,
      url: url,
    );
  }

  Book fromJson(Map<String, Object> json) {
    return Book.fromJson(json);
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  String? get asin => throw _privateConstructorUsedError;
  String get isbn => throw _privateConstructorUsedError; // detail
  List<String> get authors => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get datetime => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get sale_price => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<String> get translators => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String? asin,
      String isbn,
      List<String> authors,
      String contents,
      String datetime,
      int price,
      int sale_price,
      String publisher,
      String status,
      String title,
      String thumbnail,
      List<String> translators,
      String url});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? asin = freezed,
    Object? isbn = freezed,
    Object? authors = freezed,
    Object? contents = freezed,
    Object? datetime = freezed,
    Object? price = freezed,
    Object? sale_price = freezed,
    Object? publisher = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? translators = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      asin: asin == freezed
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      sale_price: sale_price == freezed
          ? _value.sale_price
          : sale_price // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      translators: translators == freezed
          ? _value.translators
          : translators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? asin,
      String isbn,
      List<String> authors,
      String contents,
      String datetime,
      int price,
      int sale_price,
      String publisher,
      String status,
      String title,
      String thumbnail,
      List<String> translators,
      String url});
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? asin = freezed,
    Object? isbn = freezed,
    Object? authors = freezed,
    Object? contents = freezed,
    Object? datetime = freezed,
    Object? price = freezed,
    Object? sale_price = freezed,
    Object? publisher = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? translators = freezed,
    Object? url = freezed,
  }) {
    return _then(_Book(
      asin: asin == freezed
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      sale_price: sale_price == freezed
          ? _value.sale_price
          : sale_price // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      translators: translators == freezed
          ? _value.translators
          : translators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  _$_Book(
      {this.asin,
      required this.isbn,
      required this.authors,
      required this.contents,
      required this.datetime,
      required this.price,
      required this.sale_price,
      required this.publisher,
      required this.status,
      required this.title,
      required this.thumbnail,
      required this.translators,
      required this.url});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final String? asin;
  @override
  final String isbn;
  @override // detail
  final List<String> authors;
  @override
  final String contents;
  @override
  final String datetime;
  @override
  final int price;
  @override
  final int sale_price;
  @override
  final String publisher;
  @override
  final String status;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final List<String> translators;
  @override
  final String url;

  @override
  String toString() {
    return 'Book(asin: $asin, isbn: $isbn, authors: $authors, contents: $contents, datetime: $datetime, price: $price, sale_price: $sale_price, publisher: $publisher, status: $status, title: $title, thumbnail: $thumbnail, translators: $translators, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.asin, asin) ||
                const DeepCollectionEquality().equals(other.asin, asin)) &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)) &&
            (identical(other.authors, authors) ||
                const DeepCollectionEquality()
                    .equals(other.authors, authors)) &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
            (identical(other.datetime, datetime) ||
                const DeepCollectionEquality()
                    .equals(other.datetime, datetime)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.sale_price, sale_price) ||
                const DeepCollectionEquality()
                    .equals(other.sale_price, sale_price)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.translators, translators) ||
                const DeepCollectionEquality()
                    .equals(other.translators, translators)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(asin) ^
      const DeepCollectionEquality().hash(isbn) ^
      const DeepCollectionEquality().hash(authors) ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(datetime) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(sale_price) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(translators) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  factory _Book(
      {String? asin,
      required String isbn,
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
      required String url}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String? get asin => throw _privateConstructorUsedError;
  @override
  String get isbn => throw _privateConstructorUsedError;
  @override // detail
  List<String> get authors => throw _privateConstructorUsedError;
  @override
  String get contents => throw _privateConstructorUsedError;
  @override
  String get datetime => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get sale_price => throw _privateConstructorUsedError;
  @override
  String get publisher => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  List<String> get translators => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}
