import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main/main_controller.dart';

class RepeatButton extends GetResponsiveView<MainController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<RepeatState>(
      valueListenable: controller.repeatButtonNotifier,
      builder: (context, value, child) {
        Icon icon;
        switch (value) {
          case RepeatState.off:
            icon = Icon(Icons.repeat, color: Colors.grey);
            break;
          case RepeatState.repeatSong:
            icon = Icon(Icons.repeat_one);
            break;
          case RepeatState.repeatPlaylist:
            icon = Icon(Icons.repeat);
            break;
        }
        return IconButton(
          icon: icon,
          onPressed: controller.onRepeatButtonPressed,
        );
      },
    );
  }
}
