import 'package:flutter/material.dart';
import 'package:music_popular/app/core/utils/colors.dart';
import 'package:niku/namespace.dart' as n;

const fontDBHelvethaicaX = "DBHelvethaicaX";

const headline1Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 38.0, height: 1);
const headline2Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 36.0, height: 1);
const headline3Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 34.0, height: 1);
const headline4Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 30.0, height: 1);
const headline5Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 26.0, height: 1);
const headline6Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 24.0, height: 1);
const subtitle1Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 24.0, height: 1);
const subtitle2Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 22.0, height: 1);
const body1Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 22.0, height: 1);
const body2Style =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 20.0, height: 1);
const captionStyle =
    TextStyle(fontFamily: fontDBHelvethaicaX, fontSize: 20.0, height: 1);
const buttonStyle = TextStyle(
    fontFamily: fontDBHelvethaicaX,
    fontSize: 24.0,
    height: 1,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5);
const overlineStyle = TextStyle(
    fontFamily: fontDBHelvethaicaX,
    fontSize: 18.0,
    height: 1,
    letterSpacing: 0.1);

class AppStyle {
  static final titleCutomerInfo = n.Text("")
    ..fontSize = 16
    ..w400
    ..color = AppColors.gray;

  static final detailCutomerInfo = n.Text("")
    ..fontSize = overlineStyle.fontSize!
    ..bold;

  static final buttonSizeS = n.Text("")
    ..fontSize = 16
    ..bold;
}
