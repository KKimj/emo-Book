import 'package:emo_book_flutter/views/home_page/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: HomePageBody(),
      ),
    );
  }
}
