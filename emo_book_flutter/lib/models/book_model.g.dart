// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      asin: json['asin'] as String?,
      isbn: json['isbn'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      contents: json['contents'] as String,
      datetime: json['datetime'] as String,
      price: json['price'] as int,
      sale_price: json['sale_price'] as int,
      publisher: json['publisher'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      translators: (json['translators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'asin': instance.asin,
      'isbn': instance.isbn,
      'authors': instance.authors,
      'contents': instance.contents,
      'datetime': instance.datetime,
      'price': instance.price,
      'sale_price': instance.sale_price,
      'publisher': instance.publisher,
      'status': instance.status,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'translators': instance.translators,
      'url': instance.url,
    };
