import 'package:flutter/material.dart';

// packages
import 'package:books_finder/books_finder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BookInfoTile extends StatelessWidget {
  final BookInfo? bookInfo;
  const BookInfoTile({this.bookInfo, Key? key}) : super(key: key);

  Widget _buildBodyTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookInfo!.title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          Text(
            '작가 : ${bookInfo!.authors.toString()}',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          Text('카테고리 : ${bookInfo!.categories.toString()}'),
          Text('출판사 : ${bookInfo!.publisher.toString()}'),
          Text('책 페이지 수 : ${bookInfo!.pageCount.toString()}'),
        ],
      ),
    );
  }

  Widget _buildBodyContent(BuildContext context) {
    dynamic thumbnail = bookInfo!.imageLinks['thumbnail'] ??
        bookInfo!.imageLinks['smallThumbnail'];

    return Row(
      children: [
        if (thumbnail != null) Image.network(thumbnail.toString()),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              bookInfo!.description.toString(),
              overflow: TextOverflow.clip,
              maxLines: 8,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBodyRating(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('${bookInfo!.ratingsCount} 개의 평균 별점'),
          RatingBar.builder(
            initialRating: bookInfo!.averageRating,
            minRating: 0.5,
            ignoreGestures: true,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBodyTitle(context),
            _buildBodyContent(context),
            _buildBodyRating(context),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: bookInfo != null
            ? _buildBody(context)
            : const CircularProgressIndicator(),
        onTap: () async {
          await Get.to<BookInfoDetailView>(BookInfoDetailView(
            bookInfo: bookInfo,
          ));
        },
      ),
    );
  }
}

class BookInfoDetailView extends StatelessWidget {
  final BookInfo? bookInfo;
  const BookInfoDetailView({required this.bookInfo, Key? key})
      : super(key: key);

  Widget _buildTitle(BuildContext context) {
    dynamic thumbnail = bookInfo!.imageLinks['thumbnail'] ??
        bookInfo!.imageLinks['smallThumbnail'];

    return Stack(
      children: <Widget>[
        Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(thumbnail.toString()),
                fit: BoxFit.fitHeight,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: BookInfoTile(
              bookInfo: bookInfo,
            ),
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 200,
        child: TextButton.icon(
            icon: const Icon(Icons.search),
            label: const Text('상세 웹페이지로 이동'),
            onPressed: () {}),
      ),
      onTap: () {
        // print(bookInfo);
        // https://www.google.com/search?tbm=bks&q=Shadowfever
        launch('https://www.google.com/search?tbm=bks&q=${bookInfo!.title}');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildTitle(context),
          _buildBody(context),
        ],
      ),
    );
  }
}
