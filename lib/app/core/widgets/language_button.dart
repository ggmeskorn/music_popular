
import 'package:music_popular/app/core/theme/theme_ui.dart';

class LanguageButton extends StatelessWidget {
  final GestureTapCallback? onChange;

  LanguageButton({this.onChange});

  final _isTh = LanguageService.isTh;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        LanguageService.swapLanguage();
        if (onChange != null) {
          onChange!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(spaceL),
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
        ),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(spaceL),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceSS),
                color: _isTh ? AppColors.yellow : AppColors.white,
                child: Text(
                  "TH",
                  style: body2Style.copyWith(
                    color: _isTh ? AppColors.black : AppColors.gray,
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: spaceM, vertical: spaceSS),
                color: _isTh ? AppColors.white : AppColors.yellow,
                child: Text(
                  "EN",
                  style: body2Style.copyWith(
                    color: _isTh ? AppColors.gray : AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
