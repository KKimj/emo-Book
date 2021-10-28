import 'package:emo_book_flutter/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  String name;
  int uid;
  String? image_url;
  Profile({Key? key, this.name = '', required this.uid, this.image_url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GridTile(
        footer: Center(child: Text(name)),
        child: Card(
          child: image_url != null
              ? Image.network(image_url!)
              : const Icon(Icons.account_circle),
          elevation: 8,
          shadowColor: Colors.black,
          margin: const EdgeInsets.all(20),
        ),
      ),
      onTap: () {
        UserController.to.setProfile(name, uid);
        Get.toNamed('/recommand?uid=$uid');
      },
    );
  }
}
