// ignore_for_file: use_key_in_widget_constructors

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
            padding: EdgeInsets.only(top: spaceM),
            child: Column(
              children: [
                ShadowImage(
                  imageProvider: controller.imageMusic,
                  size: const Size(350 * .7, 370 * .7),
                  borderRadius: BorderRadius.circular(20),
                ),
                verticalSpaceXL,
                "${LocaleKeys.main_title_song.tr} $title".b1,
                verticalSpaceS,
                "${LocaleKeys.main_album.tr} ${controller.album}".ol,
                verticalSpaceL
              ],
            ),
          );
        });
  }
}
