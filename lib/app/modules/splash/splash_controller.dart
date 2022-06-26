// ignore_for_file: prefer_const_constructors

import 'package:music_popular/app/modules/global_widgets/app_controller.dart';
import 'package:music_popular/app/modules/splash/splash_router.dart';

class SplashController extends AppController<SplashRouter> {
  //TODO: Implement SplashController

  @override
  void onInit() {
    haskMain();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void haskMain() async {
    await Future.delayed(Duration(seconds: 2));
    router.toMain();
  }
}
