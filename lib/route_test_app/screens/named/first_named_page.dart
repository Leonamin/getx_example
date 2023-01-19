import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteTestFirstNamedPage extends StatelessWidget {
  const RouteTestFirstNamedPage({super.key});

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
                Get.back();
              },
              child: Text('돌아가라 바튼'),
            ),
            OutlinedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: Text('전진만이 살길이다'),
            ),
          ],
        ),
      ),
    );
  }
}
