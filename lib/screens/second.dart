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
              },
              child: const Text("FALLBACK!!!"),
            ),
          ],
        ),
      ),
    );
  }
}
