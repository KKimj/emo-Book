import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_template_project/viewmodels/test_viewmodel.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: GetBuilder<TestViewmodel>(builder: (_) {
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
            ),
            Expanded(
              child: ScreenTypeLayout(
                // breakpoints: ScreenBreakpoints(tablet: 600, desktop: 950, watch: 300),
                mobile: Container(
                  color: Colors.blue,
                  child: Center(child: Text('mobile')),
                ),
                tablet: Container(
                  color: Colors.yellow,
                  child: Center(child: Text('tablet')),
                ),
                desktop: Container(
                  color: Colors.red,
                  child: Center(child: Text('desktop')),
                ),
                watch: Container(
                  color: Colors.purple,
                  child: Center(child: Text('watch')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
