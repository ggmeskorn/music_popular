import 'package:music_popular/app/core/theme/theme_ui.dart';

import 'button/next_song_button.dart';
import 'button/play_button.dart';
import 'button/previous_song_button.dart';
import 'button/repeat_button.dart';
import 'button/shuffle_button.dart';

class AudioControlButtons extends StatelessWidget {
  const AudioControlButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          RepeatButton(),
          PreviousSongButton(),
          PlayButton(),
          NextSongButton(),
          ShuffleButton(),
        ],
      ),
    );
  }
}
