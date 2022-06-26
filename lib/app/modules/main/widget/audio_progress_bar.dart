import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main/main_controller.dart';

class AudioProgressBar extends GetResponsiveView<MainController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: controller.progressNotifier,
      builder: (_, value, __) {
        return ProgressBar(
          progressBarColor: Colors.amber,
          bufferedBarColor: Colors.grey[300],
          thumbColor: Colors.amber,
          thumbGlowRadius: 5,
          thumbRadius: 6,
          barHeight: 7,
          timeLabelPadding: 10,
          progress: value.current,
          buffered: value.buffered,
          total: value.total,
          onSeek: controller.seek,
        );
      },
    );
  }
}
