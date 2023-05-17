import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeConfigs {
  final primaryColor = Color(0xFF4D7EFA);
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color surfaceColor;
  final Color backgroundColor;
  final Color appBarColor;
  final Brightness brightness;
  final Color secondry;
  final Color onPrimary;

  ThemeConfigs.dark()
      : primaryTextColor = Colors.white,
        secondaryTextColor = Colors.black,
        surfaceColor = Colors.white,
        backgroundColor = Color(0x42000000),
        appBarColor = Colors.black,
        secondry = Colors.black12,
        onPrimary=Colors.white60,
        brightness = Brightness.dark;

  ThemeConfigs.light()
      : primaryTextColor = Colors.black,
        secondaryTextColor = Colors.white,
        secondry = Color(0xffD1D8EB),
        surfaceColor = Colors.black,
        backgroundColor = Color(0xffE7EBF4),
        appBarColor = Colors.white,
        onPrimary=Colors.black54,
        brightness = Brightness.light;

  ThemeData getTheme() {
    return ThemeData(
        brightness: brightness,
        appBarTheme: AppBarTheme(backgroundColor: appBarColor),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: TextTheme(
          headline6: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: primaryTextColor),
          bodyText2: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              color: primaryTextColor),
          headline4: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: primaryTextColor),
          bodyText1: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: secondaryTextColor),
          headline2: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: primaryTextColor),
          headline3: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color:primaryColor),
          headline5: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 8,
              color:primaryTextColor),
          headline1: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 15, color: primaryColor),
          subtitle1:  TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: onPrimary),
          subtitle2:  TextStyle(
              fontWeight: FontWeight.bold, fontSize: 10, color: onPrimary),

        ),
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 2, color: Color(0xFF0948EA)),
                borderRadius: BorderRadius.circular(10))),
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: primaryColor,
          onPrimary: onPrimary,
          secondary: appBarColor,
          onSecondary: secondry,
          error: Colors.red,
          onError: Colors.red,
          background: backgroundColor,
          onBackground: backgroundColor,
          surface: surfaceColor,
          onSurface: surfaceColor,
        ));
  }
}
