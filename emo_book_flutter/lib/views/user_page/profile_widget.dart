import 'package:emo_book_flutter/controllers/user_controller.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String name;
  Profile({Key? key, this.name = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GridTile(
        footer: Center(child: Text(name)),
        child: Card(
          child: name == '' ? Icon(Icons.add) : Icon(Icons.circle),
          elevation: 8,
          shadowColor: Colors.black,
          margin: EdgeInsets.all(20),
        ),
      ),
      onTap: () {
        if (name == '') {
          UserController.to.addProfile();
        }
      },
    );
  }
}
