import 'package:flutter/material.dart';
import '../components/custom_texts.dart';
import '../helper/app_config_constants.dart';

enum Font { lato, openSans, poppins, raleway, roboto }

enum DisplayMode { light, dark }

class AppThemeSetting {
  static DisplayMode mode = DisplayMode.light;

  static setDisplayMode(DisplayMode currentMode) {
    mode = currentMode;
  }
}

class AppTheme {
  static String get fontName {
    switch (fontType) {
      case Font.roboto:
        return 'Roboto';
      case Font.raleway:
        return 'Raleway';
      case Font.poppins:
        return 'Poppins';
      case Font.openSans:
        return 'OpenSans';
      case Font.lato:
        return 'Lato';
    }
  }

  static double iconSize = 20;
  static Font fontType = Font.poppins;

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff111214),
    backgroundColor: const Color(0xff212426),
    cardColor: const Color(0xff111214),
    primaryColor: const Color(0xff25D1AC),
    primaryColorDark: const Color(0xffffffff),
    primaryColorLight: const Color(0xffECF0F1),
    fontFamily: AppTheme.fontName,
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: FontSizes.h1, color: ColorConstants.inputFieldTextColor),
      displayMedium: TextStyle(
          fontSize: FontSizes.h2, color: ColorConstants.inputFieldTextColor),
      displaySmall: TextStyle(
          fontSize: FontSizes.h3, color: ColorConstants.inputFieldTextColor),
      headlineSmall: TextStyle(
          fontSize: FontSizes.h4, color: ColorConstants.inputFieldTextColor),
      bodyLarge: TextStyle(
          fontSize: FontSizes.h5, color: ColorConstants.inputFieldTextColor),
      bodyMedium: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      bodySmall: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      titleLarge: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      titleMedium: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      titleSmall: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      labelLarge: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      labelMedium: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
      labelSmall: TextStyle(
          fontSize: FontSizes.h6, color: ColorConstants.inputFieldTextColor),
    ),
    iconTheme: const IconThemeData(color: Color(0xffecf0f1)),
    bottomAppBarColor: const Color(0xffffffff),
    brightness: Brightness.dark,
    hoverColor: const Color(0xffffffff),
    shadowColor: const Color(0xff808080),
    dividerColor: const Color(0xfff1f2f6),
    errorColor: const Color(0xffff4757),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xff25D1AC),
      disabledColor: Color(0xff808080),
    ),
  );

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xfffbfbfb),
      backgroundColor: const Color(0xffffffff),
      cardColor: const Color(0xffffffff),
      primaryColor: const Color(0xff25D1AC),
      primaryColorDark: const Color(0xff000000),
      primaryColorLight: const Color(0xff455A64),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: FontSizes.h1, color: const Color(0xff000000)),
        displayMedium: TextStyle(
            fontSize: FontSizes.h2, color: const Color(0xff000000)),
        displaySmall: TextStyle(
            fontSize: FontSizes.h3, color: const Color(0xff000000)),
        headlineSmall: TextStyle(
            fontSize: FontSizes.h4, color: const Color(0xff576574)),
        bodyLarge:
            TextStyle(fontSize: FontSizes.h5, color: const Color(0xff000000)),
        bodyMedium: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff000000)),
        bodySmall: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff576574)),
        titleLarge: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff000000)),
        titleMedium: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff000000)),
        titleSmall: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff576574)),
        labelLarge:
            TextStyle(fontSize: FontSizes.h6, color: const Color(0xff607D8B)),
        labelMedium: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff607D8B)),
        labelSmall: TextStyle(
            fontSize: FontSizes.h6, color: const Color(0xff607D8B)),
      ),
      dividerColor: const Color(0xff747d8c),
      fontFamily: AppTheme.fontName,
      brightness: Brightness.light,
      hoverColor: const Color(0xff000000),
      shadowColor: const Color(0xffa4b0be),
      iconTheme: const IconThemeData(color: Color(0xff000000)),
      bottomAppBarColor: const Color(0xff000000),
      errorColor: const Color(0xffff4757),
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xff25D1AC),
        disabledColor: Color(0xff808080),
      ));
}
