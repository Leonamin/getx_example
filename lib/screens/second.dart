import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controllers/reactive_state_counter_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  final ReactiveStateCounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen was clicked ${_counterController.counter.value} time"),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
                // 이거는 자동으로 돌아가지진 않는다.
                // Get.toNamed('/home');
              },
              child: const Text("FALLBACK!!!"),
            ),
          ],
        ),
      ),
    );
  }
}
