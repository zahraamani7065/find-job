import 'package:find_job_app/configs/theme_config.dart';
import 'package:find_job_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  ThemeMode themeMode = ThemeMode.light;
  MyTheme myTheme = MyTheme.dark;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Locale _locale = Locale('en');

    setTheme(MyTheme myTheme) {
      setState(() {
        if(myTheme == MyTheme.dark) {
          themeMode = ThemeMode.light;
        }else {
          themeMode = ThemeMode.dark;
        }
      });
    }
    return MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _locale,
        themeMode: ThemeMode.dark,
        theme: setTheme(myTheme),
        home: TestTheme(onTap: () {
          print(themeMode);
          setState(() {
            if(myTheme == MyTheme.dark) {
              myTheme = MyTheme.lite;
            }else {
              myTheme = MyTheme.dark;
            }
            
          });
        }));
  }
}

enum MyTheme {
  lite,dark
}

class TestTheme extends StatefulWidget {
  const TestTheme({Key? key, required this.onTap}) : super(key: key);
  final Function() onTap;

  @override
  State<TestTheme> createState() => _TestThemeState();
}

class _TestThemeState extends State<TestTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: widget.onTap, child: Text('TestApp')),
      ),
    );
  }
}
