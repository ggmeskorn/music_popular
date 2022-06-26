import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/global_widgets/app_router.dart';

class AppController<Router extends AppRouter> extends GetxController {
  Router router = Get.find<Router>();
}
