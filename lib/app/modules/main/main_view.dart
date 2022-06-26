// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:music_popular/app/core/theme/theme_ui.dart';

import 'main_controller.dart';
import 'widget/audio_control_buttons.dart';
import 'widget/audio_progress_bar.dart';
import 'widget/current_song_title.dart';
import 'widget/play_list.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(spaceL),
      child: Column(
        children: [
          verticalSpaceL,
          Card(
            elevation: 3.0,
            child: Padding(
              padding: EdgeInsets.all(spaceS),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  verticalSpaceM,
                  CurrentSongTitle(),
                  AudioProgressBar(),
                  AudioControlButtons(),
                ],
              ),
            ),
          ),
          Playlist(),
        ],
      ),
    ));
  }
}
