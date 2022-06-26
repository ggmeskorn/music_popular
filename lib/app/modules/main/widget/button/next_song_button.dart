import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main/main_controller.dart';

class NextSongButton extends GetResponsiveView<MainController> {
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
