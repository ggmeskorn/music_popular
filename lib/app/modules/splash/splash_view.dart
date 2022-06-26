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
            // Image.asset(AssetsService.image('img_blackground.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(AssetsService.image('img_logo_crm_black.png')),
                verticalSpaceM,
                "${LocaleKeys.splash_title.tr}"
                    .h5
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
