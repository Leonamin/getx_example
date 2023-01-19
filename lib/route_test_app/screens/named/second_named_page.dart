import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteTestSecondNamedPage extends StatelessWidget {
  const RouteTestSecondNamedPage({super.key});

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
                // Get.toNamed('/home');
                Get.offAllNamed('/home');
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
