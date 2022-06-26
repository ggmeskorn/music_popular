import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main/main_controller.dart';

class ShuffleButton extends GetResponsiveView<MainController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.isShuffleModeEnabledNotifier,
      builder: (context, isEnabled, child) {
        return IconButton(
          icon: (isEnabled)
              ? Icon(Icons.shuffle)
              : Icon(Icons.shuffle, color: Colors.grey),
          onPressed: controller.onShuffleButtonPressed,
        );
      },
    );
  }
}
