import 'package:get/get.dart';

// Reactive State Manager
class ReactiveStateCounterController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter++;
  }
}
