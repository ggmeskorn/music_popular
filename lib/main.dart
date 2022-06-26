// ignore_for_file: prefer_const_constructors

import 'package:music_popular/app/core/theme/theme_ui.dart';
import 'package:music_popular/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: 
      ThemeData(
        fontFamily: fontDBHelvethaicaX,
        primaryColor: AppColors.yellow,
        primarySwatch: AppColors.orangeyYellow,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.black),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.lightGray,
        ),
        textTheme: TextTheme(
          headline1: headline1Style,
          headline2: headline2Style,
          headline3: headline3Style,
          headline4: headline4Style,
          headline5: headline5Style,
          headline6: headline6Style,
          subtitle1: subtitle1Style,
          subtitle2: subtitle2Style,
          bodyText1: body1Style,
          bodyText2: body2Style,
          caption: captionStyle,
          button: buttonStyle,
          overline: overlineStyle,
        ),
      ), //Route
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 700),
      title: "Application",
      //Locale
      locale: LanguageService.th,
      fallbackLocale: LanguageService.th,
      translationsKeys: AppTranslation.translations,
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
