import 'package:find_job_app/configs/theme_config.dart';
import 'package:find_job_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;
  Locale _locale = const Locale('en');
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    builder: (context, child) => ResponsiveBreakpoints.builder(
      child: child!,
      breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
    );

    return MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _locale,
        themeMode: ThemeMode.dark,
        theme: themeMode == ThemeMode.dark
            ? ThemeConfigs.dark().getTheme()
            : ThemeConfigs.light().getTheme(),
        home: SplashScreen(
          toggleThemeMode: () {
            setState(() {
              print(themeMode.toString() + "2222222222222222222");
              if (themeMode == ThemeMode.dark) {
                themeMode = ThemeMode.light;
              } else {
                // myTheme = MyTheme.dark;
                themeMode = ThemeMode.dark;
              }
            });
          },

          selectedLanguageChane: (Language language) {
            setState(() {
              _locale = language == Language.en ? const Locale('en') : const Locale('fa');
            });
          },
        ));
  }
}

enum Language { en, fa }
