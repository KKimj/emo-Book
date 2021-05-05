import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text('Home Page!'),
          ),
          Row(
            children: [
              Text('Book1'),
              Text('Book2'),
              Text('Book3'),
            ],
          ),
          Row(
            children: [
              Text('Book1'),
              Text('Book2'),
              Text('Book3'),
            ],
          ),
        ],
      ),
    );
  }
}
