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
        image: "assets/images/artworks-000150008304-4aelio-t500x500.jpeg",
        title: "Michael Seyer",
        singerName: "Close To Shiva",
        music: 'asset:assets/path/Close to Shiva.mp3',
        minute: "3:33"),
    DashboardMusic(
        image: "assets/images/artworks-KNZJmZOuJYe0HM5P-lbzzfg-t500x500.jpeg",
        title: "MasterClass",
        singerName: "Echo dely",
        music: 'asset:assets/path/Echo dely.mp3',
        minute: "3:31"),
    DashboardMusic(
        image: "assets/images/avatars-000002165080-qkb8bh-t500x500.jpeg",
        title: "The Ratz",
        singerName: "I Can't See Straight",
        music: 'asset:assets/path/i cant see straight.mp3',
        minute: "2:39"),
    DashboardMusic(
        image: "assets/images/artworks-000545360319-nulalo-t500x500.jpeg",
        title: "nqh",
        singerName: "SURL (설) - Snow (눈)",
        music: 'asset:assets/path/Letra_SURL.mp3',
        minute: "4:35"),
    DashboardMusic(
        image: "assets/images/artworks-000208669412-n89gsp-t500x500.jpeg",
        title: "MasterClass",
        singerName: "A Glimmer Of Light",
        music:
            'asset:assets/path/MasterClass, Darley - A Glimmer Of Light - 01 A Glimmer Of Light.mp3',
        minute: "3:36"),
    DashboardMusic(
        image: "assets/images/artworks-000232209470-nb7bl9-t500x500.jpeg",
        title: "‎elijah who",
        singerName: "sad and boujee",
        music: 'asset:assets/path/sad and boujee.mp3',
        minute: "4:07"),
    DashboardMusic(
        image: "assets/images/artworks-000210851093-5hoy0i-t500x500.jpeg",
        title: "elijah who",
        singerName: "skateboard p",
        music: 'asset:assets/path/skateboard p.mp3',
        minute: "3:58"),
    DashboardMusic(
        image: "assets/images/artworks-000244111652-kk7208-t500x500.jpeg",
        title: "simon eng",
        singerName: "Yes",
        music: 'asset:assets/path/yes.mp3',
        minute: "1:25"),
  ];
}
