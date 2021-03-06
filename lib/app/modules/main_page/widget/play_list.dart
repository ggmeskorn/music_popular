// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/modules/main_page/main_page_controller.dart';

import 'shadow_image.dart';

class Playlist extends GetResponsiveView<MainPageController> {
  final _isTh = LanguageService.isTh;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder<List<DashboardMusic>>(
        valueListenable: controller.playlistNotifier,
        builder: (context, playlistTitles, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceL,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LocaleKeys.main_title.tr.h6.bold,
                  GestureDetector(
                      onTap: () {
                        LanguageService.swapLanguage();
                      },
                      child:
                          "${LocaleKeys.language_th.tr} || ${LocaleKeys.language_en.tr}"
                              .b1
                              .regular),
                ],
              ),
              verticalSpaceM,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      children:
                          DashboardController.listPopularMusic.map((entry) {
                    final index1 = DashboardController.listPopularMusic
                        .indexWhere((element) =>
                            element.singerName == entry.singerName);
                    var w = GestureDetector(
                      onTap: () {
                        controller.setInitialPlaylist(index1);
                        controller.play();
                      },
                      child: Card(
                        elevation: 3.0,
                        child: ListTile(
                            leading: ShadowImage(
                              imageProvider: entry.image,
                              size: Size(heightAppBarTitle, heightAppBarTitle),
                              borderRadius: BorderRadius.circular(spaceXL),
                              offset: Offset(0, 5),
                            ),
                            title: Text(entry.singerName),
                            subtitle: Text("${entry.title}"),
                            trailing: Text("${entry.minute}")),
                      ),
                    );

                    return w;
                  }).toList()),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
