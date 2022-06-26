class DashboardMusic {
  final String image;
  final String title;
  final String singerName;
  final String music;
  final String minute;

  DashboardMusic(
      {required this.image,
      required this.title,
      required this.music,
      required this.singerName,
      required this.minute});
}

class DashboardController {
  static final listPopularMusic = [
    DashboardMusic(
        image: "assets/images/img_close_to_shiva.jpeg",
        title: "Michael Seyer",
        singerName: "Close To Shiva",
        music: 'asset:assets/music/Close to Shiva.mp3',
        minute: "3:33"),
    DashboardMusic(
        image: "assets/images/img_echo_dely.jpeg",
        title: "MasterClass",
        singerName: "Echo dely",
        music: 'asset:assets/music/Echo dely.mp3',
        minute: "3:31"),
    DashboardMusic(
        image: "assets/images/img_i_cant_see_straight.jpeg",
        title: "The Ratz",
        singerName: "I Can't See Straight",
        music: 'asset:assets/music/i cant see straight.mp3',
        minute: "2:39"),
    DashboardMusic(
        image: "assets/images/img_surl.jpeg",
        title: "nqh",
        singerName: "SURL (설) - Snow (눈)",
        music: 'asset:assets/music/Letra_SURL.mp3',
        minute: "4:35"),
    DashboardMusic(
        image: "assets/images/img_a_glimmer_of_light.jpeg",
        title: "MasterClass",
        singerName: "A Glimmer Of Light",
        music:
            'asset:assets/music/MasterClass, Darley - A Glimmer Of Light - 01 A Glimmer Of Light.mp3',
        minute: "3:36"),
    DashboardMusic(
        image: "assets/images/img_sad_and_boujee.jpeg",
        title: "elijah who",
        singerName: "sad and boujee",
        music: 'asset:assets/music/sad and boujee.mp3',
        minute: "4:07"),
    DashboardMusic(
        image: "assets/images/img_skateboard_p.jpeg",
        title: "elijah who",
        singerName: "skateboard p",
        music: 'asset:assets/music/skateboard p.mp3',
        minute: "3:58"),
    DashboardMusic(
        image: "assets/images/img_yes.jpeg",
        title: "simon eng",
        singerName: "Yes",
        music: 'asset:assets/music/yes.mp3',
        minute: "1:25"),
  ];
}
