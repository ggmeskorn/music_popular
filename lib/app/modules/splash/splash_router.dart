import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/global_widgets/app_router.dart';
import 'package:music_popular/app/routes/app_pages.dart';

class SplashRouter extends AppRouter {
  void toMain() => Get.offNamed(Routes.MAIN);
}
