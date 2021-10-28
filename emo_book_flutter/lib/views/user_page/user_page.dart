import 'package:emo_book_flutter/views/user_page/profile_widget.dart';
import 'package:flutter/material.dart';

// Packages
import 'package:get/get.dart';

// Controllers
import 'package:emo_book_flutter/controllers/user_controller.dart';

// Widgets
import 'package:emo_book_flutter/views/widgets/app_bar.dart';

class UserPage extends StatelessWidget {
  List<String> profile_name = [
    'historical_romance_fan',
    'fantasy_romance_fan',
    'bad_boy_fan',
    'good_boy_fan',
    'austen_fan',
    'marvel_fan',
    'neil_fan',
    'horror_fan',
    'harry_potter_fan',
    'twentieth_fantasy_fan',
    'epic_fantasy_fan',
  ];
  List<int> profile_uid = [
    202168,
    202169,
    202170,
    202171,
    202172,
    202173,
    202174,
    202175,
    202176,
    202177,
    202178,
    202179,
  ];
  List<String> image_urls = [
    'https://ih1.redbubble.net/image.2221706329.0058/st,small,507x507-pad,600x600,f8f8f8.jpg',
    'https://apkmodlab.com/wp-content/uploads/2021/07/love-fantasy-romance-episode.png',
    'https://www.bornbadboys.com/SuperBoy-9099.png',
    'https://cdn.topstarnews.net/news/photo/201807/453655_105789_4550.jpeg',
    'https://i.pinimg.com/originals/cf/8a/c9/cf8ac9b7755198f5090eb3abe7cb602a.jpg',
    'https://vistapointe.net/images/doctor-strange-wallpaper-7.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/0/0d/Neil_Armstrong_pose.jpg',
    'https://static.thenounproject.com/png/686741-200.png',
    'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2020/04/05/1337922396.jpg',
    'https://d1nslcd7m2225b.cloudfront.net/Pictures/480xAny/0/1/2/1295012_fox-logo.jpg',
    'https://i.pinimg.com/736x/1f/14/a7/1f14a7f2930e5adc5bf11f0aaee96184--fantasy-city-fantasy-places.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(builder: (_) {
      return Scaffold(
        body: Column(
          children: [
            EmoAppBar(),
            ElevatedButton(
                onPressed: () {
                  _.logout().then((_) => Get.offAllNamed('/'));
                },
                child: const Text('로그아웃')),
            Flexible(
              child: Center(
                child: GridView.builder(
                    itemCount: profile_name.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: GetPlatform.isMobile ? 2 : 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Profile(
                        name: profile_name[index],
                        uid: profile_uid[index],
                        image_url: image_urls[index],
                      );
                    }),
              ),
            ),
          ],
        ),
      );
    });
  }
}
