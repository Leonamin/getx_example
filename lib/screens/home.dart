import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controllers/reactive_state_counter_controller.dart';
import 'package:getx_example/controllers/simple_state_counter_controller.dart';
import 'package:getx_example/screens/second.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ReactiveStateCounterController reactiveStateCounterController =
      Get.put(ReactiveStateCounterController());

  final SimpleStateCounterController simpleStateCounterController =
      Get.put(SimpleStateCounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks: ${reactiveStateCounterController.counter}"),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  // 그냥 SecondScreen() 사용하면 아래 경고가 나온다.
                  // WARNING, consider using: "Get.to(() => Page())" instead of "Get.to(Page())".
                  // Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer used.
                  // 메모리 최적화 하려면 위젯을 넣지 말고 위젯 함수를 넣어 사용하라는데 어떠한 이유일까

                  // to, toNamed, off, offAll 이 있다.
                  Get.toNamed(
                    '/second',
                  );
                },
                child: const Text("Open Other Screen"),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          reactiveStateCounterController.increment();
        },
      ),
    );
  }
}
