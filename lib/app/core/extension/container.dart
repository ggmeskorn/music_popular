import 'package:music_popular/app/core/theme/theme_ui.dart';

extension AppShadow on Container {
  static List<BoxShadow> get minimal {
    return [
      BoxShadow(
        color: AppColors.gray.withOpacity(0.5),
        blurRadius: spaceSS,
        offset: Offset(0, 0),
      ),
    ];
  }

  static List<BoxShadow> get medium {
    return [
      BoxShadow(
        color: AppColors.gray.withOpacity(0.7),
        blurRadius: spaceS,
        offset: Offset(0, 0),
      ),
    ];
  }
}

extension AppBorderRadius on Container {
  static BorderRadius custom(double radius) {
    return BorderRadius.circular(radius);
  }

  static BorderRadius get ss {
    return BorderRadius.circular(spaceSS);
  }

  static BorderRadius get s {
    return BorderRadius.circular(spaceS);
  }

  static BorderRadius get m {
    return BorderRadius.circular(spaceM);
  }

  static BorderRadius get l {
    return BorderRadius.circular(spaceL);
  }

  static BorderRadius get xl {
    return BorderRadius.circular(spaceXL);
  }
}
