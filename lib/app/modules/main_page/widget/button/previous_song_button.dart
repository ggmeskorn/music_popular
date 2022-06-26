// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main_page/main_page_controller.dart';

class PreviousSongButton extends GetResponsiveView<MainPageController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.isFirstSongNotifier,
      builder: (_, isFirst, __) {
        return IconButton(
          icon: Icon(Icons.skip_previous),
          onPressed: (isFirst) ? null : controller.onPreviousSongButtonPressed,
        );
      },
    );
  }
}
