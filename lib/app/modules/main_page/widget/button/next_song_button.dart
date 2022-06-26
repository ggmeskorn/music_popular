import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main_page/main_page_controller.dart';

class NextSongButton extends GetResponsiveView<MainPageController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.isLastSongNotifier,
      builder: (_, isLast, __) {
        return IconButton(
          icon: Icon(Icons.skip_next),
          onPressed: (isLast) ? null : controller.onNextSongButtonPressed,
        );
      },
    );
  }
}
