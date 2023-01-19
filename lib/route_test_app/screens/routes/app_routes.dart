import 'package:get/get.dart';
import 'package:getx_example/route_test_app/screens/named/first_named_page.dart';
import 'package:getx_example/route_test_app/screens/named/route_test_home_named_page.dart';
import 'package:getx_example/route_test_app/screens/named/second_named_page.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => RouteTestHomeNamedPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/first',
        page: () => RouteTestFirstNamedPage(),
        // middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/second',
        page: () => RouteTestSecondNamedPage(),
        // middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 100),
      ),
    ];
