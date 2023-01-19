import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteTestHomeNamedPage extends StatelessWidget {
  const RouteTestHomeNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("홈!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                // 내비게이터!
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RouteTestFirstPage(),
                //   ),
                // );
                // 넌 겟!
                Get.toNamed('/first');
              },
              child: Text('푸시 라우트'),
            ),
          ],
        ),
      ),
    );
  }
}
