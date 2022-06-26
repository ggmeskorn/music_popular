// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class AppColors {
  static const transparent = Colors.transparent;
  static const white = Colors.white;
  static const black = Colors.black;
  static const black87 = Colors.black87;
  static const gray = Colors.grey;
  static const light2Gray = Color(0xFFAAAAAA);
  static const lightGray = Color(0xFFf1f1f1);
  static const darkGrey = Colors.black54;
  static const greenMid = Color(0xff4caf50);
  static const purple = Color(0xff67308C);
  static const yellowMaize = Color(0xffffe05f);
  static const yellowPale = Color(0xfffef3d8);
  static const greenOcean = Color(0xff439c76);
  static const greenKelley = Color(0xff00933b);
  static const yellowButterscotch = Color(0xfffbb03b);
  static const greenDull = Color(0xff7fb460);
  static const blueCerulean = Color(0xff0071ba);
  static const redBlush = Color(0xffeeaa8f);
  static const red = Color(0xffea2e2d);
  static const lightRed = Color(0xfff1d6d6);
  static const blue = Color(0xff0071B5);
  static const blueDark = Color(0xff3ebddc);
  static const blueSky = Color(0xff50c7e2);
  static const blueLight = Color(0xff7ad0ea);
  static const blueBright = Color(0xff8bd9f4);
  static const pinkDark = Color(0xffd34a72);
  static const pink = Color(0xfffe7ca2);
  static const pinkBlush = Color(0xfff58a8a);
  static const pinkSoft = Color(0xfffab8b9);
  static const pinkRosa = Color(0xfff7a1a2);
  static const pinkLightPeach = Color(0xfff5ccbc);
  static const pinkPeach = Color(0xfff9caca);
  static const orange = Color(0xFFFFCD54);
  static const orangeTangerine = Color(0xfff5911e);
  static const yellowlightBrown = Color(0xffC6B198);

  // Point TabBar
  static const regularPoint = Color(0xffF8DF74);
  static const customerPoint = Color(0xffF2CD57);
  static const rewardPointHistory = Color(0xffF2BB22);

  // Promotion TabBar
  static const promotionBuy = Color(0xffF68A8A);
  static const promotionRedeem = Color(0xffF8A1A2);
  static const promotionBuyHistory = Color(0xffFAB8B9);
  static const promotionRedeemHistory = Color(0xffF9CACA);

  // Rewards
  static const rewardsRedeem = Color(0xffF5CCBC);
  static const rewardsRedeemHistory = Color(0xffEEAA8F);

  // Membership
  static const membershipTier = Color(0xff8B98F8);
  static const membershipHistory = Color(0xffBCC2F7);

  // Customer Info
  static const customerInfoEditProfileByCustomerInfo = Color(0xff8BD9F5);
  static const customerInfoGroupList = Color(0xff7AD0EA);
  static const customerInfoActivityByCustomrtInfo = Color(0xff50C7E2);
  static const customerInfoPDPA = Color(0xff3EBDDD);

  static MaterialColor orangeyYellow =
      AppColors.materialColor(Color(_orangeyYellowPrimaryValue));
  static int _orangeyYellowPrimaryValue = 0xfff2bb22;

  static MaterialColor yellow =
      AppColors.materialColor(Color(_yellowPrimaryValue));
  static int _yellowPrimaryValue = 0xfffbd348;

  static MaterialColor materialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  static const gradientOrangePink = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.orangeTangerine,
      AppColors.pinkBlush,
    ],
  );
}
