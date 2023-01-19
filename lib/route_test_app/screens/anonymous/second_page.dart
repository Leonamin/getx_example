import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/route_test_app/screens/anonymous/route_test_home_page.dart';

class RouteTestSecondPage extends StatelessWidget {
  const RouteTestSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 스페어'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                // 이런거는 근데 솔직히 중첩 처리가 맞다. offAll 했을 때 사라지면 안되는 히스토리도 있을텐데.
                Get.offAll(
                  () => RouteTestHomePage(),
                );
              },
              child: Text('완전히 돌아간다.'),
            ),
            OutlinedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('뒤로 돌아간다'),
            ),
          ],
        ),
      ),
    );
  }
}
