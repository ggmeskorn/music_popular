import 'package:get/get.dart';

import '../modules/main_page/main_page_binding.dart';
import '../modules/main_page/main_page_view.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainPageView(),
      binding: MainPageBinding(),
    ),
  ];
}
