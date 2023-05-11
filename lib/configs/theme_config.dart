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

  ThemeConfigs.dark()
      :primaryTextColor=Colors.white,
        secondaryTextColor=Colors.black,
        surfaceColor=Color(0x0dffffff),
        backgroundColor=Colors.black12,
        appBarColor=Colors.black,
        brightness=Brightness.dark;
  ThemeConfigs.light()
      :primaryTextColor=Colors.black,
        secondaryTextColor=Colors.white,
        surfaceColor=Color(0x0dffffff),
        backgroundColor=Colors.white,
        appBarColor=Colors.white,
        brightness=Brightness.light;

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
          bodyText1: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: secondaryTextColor),
          headline1: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: primaryColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(width: 2, color: Color(0xFF0948EA)),
                borderRadius: BorderRadius.circular(10))),
        primarySwatch: Colors.blue,
        primaryColor: primaryColor);
  }

}