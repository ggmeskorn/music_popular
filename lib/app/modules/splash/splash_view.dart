import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: GetPlatform.isAndroid ? AppColors.white : AppColors.white,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.music_note,
                  size: sizeImageCustomer,
                ),
                verticalSpaceM,
                "${LocaleKeys.splash_title.tr}"
                    .h3
                    .regular
                    .color(AppColors.black)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
