import 'package:get/get.dart';

// Reactive State Manager
class SimpleStateCounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}
