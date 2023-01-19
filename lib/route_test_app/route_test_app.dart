import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/route_test_app/screens/routes/app_routes.dart';

class RouteTestApp extends StatelessWidget {
  const RouteTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Route Test App',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.cyan,
      ),
      // 익명
      // home: RouteTestHomePage(),
      // 네임드
      initialRoute: '/home',
      getPages: appRoutes(),
    );
  }
}
