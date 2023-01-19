import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/route_test_app/route_test_app.dart';
import 'package:getx_example/screens/home.dart';
import 'package:getx_example/screens/second.dart';

void main() {
  runApp(const RouteTestApp());
}

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => HomeScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/second',
        page: () => SecondScreen(),
        // middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 100),
      ),
    ];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: appRoutes(),
    );
  }
}
