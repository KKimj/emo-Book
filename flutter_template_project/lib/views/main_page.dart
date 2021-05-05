import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_template_project/viewmodels/test_viewmodel.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return Center(
            child: Column(
              children: [
                Text('Hello template'),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/sub');
                  },
                  child: Text('Go to subpage!'),
                ),
                GetBuilder<TestViewmodel>(builder: (_) {
                  return ElevatedButton(
                    onPressed: () {
                      var id = TestViewmodel.to.test.id + 1;
                      var value = TestViewmodel.to.test.value + 1;
                      TestViewmodel.to.test_update(id: id, value: value);
                    },
                    child: Text('update !'
                        '${TestViewmodel.to.test.id} / ${TestViewmodel.to.test.value}'),
                  );
                }),
              ],
            ),
          );
        },
      )),
    );
  }
}
