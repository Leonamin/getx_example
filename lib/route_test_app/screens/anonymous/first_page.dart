import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/route_test_app/screens/anonymous/route_test_home_page.dart';
import 'package:getx_example/route_test_app/screens/anonymous/second_page.dart';

class RouteTestFirstPage extends StatelessWidget {
  const RouteTestFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('퍼스트 어벤져'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Get.to(
                  () => RouteTestHomePage(),
                );
              },
              child: Text('돌아가라 바튼'),
            ),
            OutlinedButton(
              onPressed: () {
                Get.to(
                  () => RouteTestSecondPage(),
                );
              },
              child: Text('전진만이 살길이다'),
            ),
          ],
        ),
      ),
    );
  }
}
