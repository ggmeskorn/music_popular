import 'dart:developer';

import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:just_audio/just_audio.dart';

class MainController extends GetxController {
  final currentSongTitleNotifier = ValueNotifier<String>('');
  final playlistNotifierImage = ValueNotifier<String>("");
  final playlistNotifier = ValueNotifier<List<DashboardMusic>>([]);
  final progressNotifier = ProgressNotifier();
  final repeatButtonNotifier = RepeatButtonNotifier();
  final isFirstSongNotifier = ValueNotifier<bool>(true);
  final playButtonNotifier = PlayButtonNotifier();
  final isLastSongNotifier = ValueNotifier<bool>(true);
  final isShuffleModeEnabledNotifier = ValueNotifier<bool>(false);
  late AudioPlayer _audioPlayer;
  late ConcatenatingAudioSource _playlist;
  var imageMusic = "";
  var album = "";
  @override
  void onInit() {
    _audioPlayer = AudioPlayer();
    setInitialPlaylist(0);
    _listenForChangesInPlayerState();
    _listenForChangesInPlayerPosition();
    _listenForChangesInBufferedPosition();
    _listenForChangesInTotalDuration();
    _listenForChangesInSequenceState();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  setAlbumAndImage(String title) {
    final index1 = DashboardController.listPopularMusic
        .indexWhere((element) => element.singerName == title);
    if (index1 != -1) {
      imageMusic = DashboardController.listPopularMusic[index1].image;
      album = DashboardController.listPopularMusic[index1].title;
      log("${imageMusic}");
    } else {
      imageMusic = "assets/images/artworks.jpeg";
      album = "Michael Seyer";
    }
  }

  void setInitialPlaylist(int indexw) async {
    _playlist = ConcatenatingAudioSource(
      children: DashboardController.listPopularMusic
          .map(
            (item) =>
                AudioSource.uri(Uri.parse(item.music), tag: item.singerName),
          )
          .toList(),
    );
    await _audioPlayer.setAudioSource(_playlist, initialIndex: indexw);
  }

  void _listenForChangesInPlayerState() {
    _audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering) {
        playButtonNotifier.value = ButtonState.loading;
      } else if (!isPlaying) {
        playButtonNotifier.value = ButtonState.paused;
      } else if (processingState != ProcessingState.completed) {
        playButtonNotifier.value = ButtonState.playing;
      } else {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });
  }

  void _listenForChangesInPlayerPosition() {
    _audioPlayer.positionStream.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });
  }

  void _listenForChangesInBufferedPosition() {
    _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: bufferedPosition,
        total: oldState.total,
      );
    });
  }

  void _listenForChangesInTotalDuration() {
    _audioPlayer.durationStream.listen((totalDuration) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: totalDuration ?? Duration.zero,
      );
    });
  }

  void _listenForChangesInSequenceState() {
    _audioPlayer.sequenceStateStream.listen((sequenceState) {
      if (sequenceState == null) return;

      // update current song title
      final currentItem = sequenceState.currentSource;
      final title = currentItem?.tag as String?;
      currentSongTitleNotifier.value = title ?? '';
      final index1 = DashboardController.listPopularMusic
          .indexWhere((element) => element.singerName == title);
      if (index1 != -1) {
        final ww = DashboardController.listPopularMusic[index1].image;
        playlistNotifierImage.value = ww;
        log("Index $index1: ${DashboardController.listPopularMusic[index1].image}");
      }
      // update playlist
      final playlist = sequenceState.effectiveSequence;
      final titles =
          DashboardController.listPopularMusic.map((item) => item).toList();
      playlistNotifier.value = titles;

      // update shuffle mode
      isShuffleModeEnabledNotifier.value = sequenceState.shuffleModeEnabled;

      // update previous and next buttons
      if (playlist.isEmpty || currentItem == null) {
        isFirstSongNotifier.value = true;
        isLastSongNotifier.value = true;
      } else {
        isFirstSongNotifier.value = playlist.first == currentItem;
        isLastSongNotifier.value = playlist.last == currentItem;
      }
    });
  }

  void play() async {
    _audioPlayer.play();
  }

  void playsu() async {}

  void pause() {
    _audioPlayer.pause();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  void dispose() {
    _audioPlayer.dispose();
  }

  void onRepeatButtonPressed() {
    repeatButtonNotifier.nextState();
    switch (repeatButtonNotifier.value) {
      case RepeatState.off:
        _audioPlayer.setLoopMode(LoopMode.off);
        break;
      case RepeatState.repeatSong:
        _audioPlayer.setLoopMode(LoopMode.one);
        break;
      case RepeatState.repeatPlaylist:
        _audioPlayer.setLoopMode(LoopMode.all);
    }
  }

  void onPreviousSongButtonPressed() {
    _audioPlayer.seekToPrevious();
  }

  void onNextSongButtonPressed() {
    _audioPlayer.seekToNext();
  }

  void onShuffleButtonPressed() async {
    final enable = !_audioPlayer.shuffleModeEnabled;
    if (enable) {
      await _audioPlayer.shuffle();
    }
    await _audioPlayer.setShuffleModeEnabled(enable);
  }
}
