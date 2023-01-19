import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/route_test_app/screens/anonymous/first_page.dart';

class RouteTestHomePage extends StatelessWidget {
  const RouteTestHomePage({super.key});

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
                Get.to(
                  () => RouteTestFirstPage(),
                );
              },
              child: Text('푸시 라우트'),
            ),
          ],
        ),
      ),
    );
  }
}
