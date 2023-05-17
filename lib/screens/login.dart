import 'package:find_job_app/main.dart';
import 'package:find_job_app/screens/forgot_password.dart';
import 'package:find_job_app/screens/home.dart';
import 'package:find_job_app/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  final Function() toggleThemeMode;
  final Function(Language) selectedLanguageChane;

  const LoginScreen({super.key, required this.toggleThemeMode, required this.selectedLanguageChane});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool passEnable = true;

class _LoginScreenState extends State<LoginScreen> {
  Language _language = Language.en;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuary = MediaQuery.of(context).size;
    void _updateSelectiveLanguage(Language language) {
      widget.selectedLanguageChane(language);
      setState(() {
        _language = language;
      });
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/10088 1.png',
                  width: mediaQuary.width,
                  height: mediaQuary.height / 4.5,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppLocalizations.of(context) != null
                      ? AppLocalizations.of(context)!.login
                      : '',
                  style: textTheme.headline6,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  AppLocalizations.of(context)!.email,
                  style: textTheme.bodyText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: const TextButton(
                      style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: null,
                      child: Text(
                        '@',
                        style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    label: Text(AppLocalizations.of(context)!.enterEmail),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppLocalizations.of(context)!.password,
                  style: textTheme.bodyText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: passEnable,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: passEnable
                          ? const Icon(
                              CupertinoIcons.eye,
                              color: Colors.indigoAccent,
                            )
                          : const Icon(
                              CupertinoIcons.eye_slash,
                              color: Colors.indigoAccent,
                            ),
                      onPressed: () {
                        setState(() {
                          if (passEnable) {
                            passEnable = false;
                          } else {
                            passEnable = true;
                          }
                        });
                      },
                    ),
                    label: Text(
                      AppLocalizations.of(context)!.enterPassword,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainScreen(
                              toggleThemeMode: widget.toggleThemeMode,
                            )));
                  },
                  child: Container(
                    width: mediaQuary.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4D7EFA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.submit,
                        style: textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ForgotPassword(
                        toggleThemeMode: widget.toggleThemeMode,
                      );
                    }));
                  },
                  child: Center(
                      child: Text(
                    AppLocalizations.of(context)!.forgotPassword,
                    style: textTheme.headline1,
                  )),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    children: [
                  Text(
                    AppLocalizations.of(context)!.chooseLang,
                    style: textTheme.headline4,
                  ),
                  CupertinoSlidingSegmentedControl<Language>(
                      groupValue: _language,
                      children: {
                        Language.en: Text(
                          AppLocalizations.of(context)!.english,
                          style: textTheme.headline4,
                        ),
                        Language.fa: Text(
                          AppLocalizations.of(context)!.persian,
                          style: textTheme.headline4,
                        ),
                      },

                      onValueChanged: (value) {
                        if (value != null) {
                          _updateSelectiveLanguage(value);
                        }


                      })
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
