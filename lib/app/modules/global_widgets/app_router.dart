import 'package:music_popular/app/core/theme/theme_ui.dart';

class AppRouter<Router> {
  void toBack<T>(
      {T? result,
      bool closeOverlays = false,
      bool canPop = true,
      int? id}) async {
    Get.back(
        result: result, closeOverlays: closeOverlays, canPop: canPop, id: id);
  }

  bool hasInputData() {
    return Get.arguments != null;
  }

  dynamic getInputData() {
    return Get.arguments;
  }
}
