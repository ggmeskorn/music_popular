import 'dart:developer';

import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main/main_controller.dart';

import 'shadow_image.dart';

class CurrentSongTitle extends GetResponsiveView<MainController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
        valueListenable: controller.currentSongTitleNotifier,
        builder: (_, title, __) {
          controller.setAlbumAndImage(title);
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                ShadowImage(
                  imageProvider: "${controller.imageMusic}",
                  size: Size(350 * .7, 370 * .7),
                  borderRadius: BorderRadius.circular(20),
                ),
                verticalSpaceXL,
                "เพลง $title".b1,
                verticalSpaceS,
                "อัลบั้ม ${controller.album}".ol,
                verticalSpaceL
              ],
            ),
          );
        });
  }
}
