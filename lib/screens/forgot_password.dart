import 'package:find_job_app/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../configs/theme_config.dart';
import '../main.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

bool passEnable = true;

class _ForgotPasswordState extends State<ForgotPassword> {
  ThemeMode themeMode = ThemeMode.light;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuary = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/reg.png',
                  width: mediaQuary.width,
                  height: mediaQuary.height / 4.5,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Registration',
                  style: textTheme.headline6,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Email',
                  style: textTheme.bodyText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon: TextButton(
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
                    label: Text('Email...'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Password',
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
                    label: const Text('Password...'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  're-enter Password',
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
                    label: const Text('re-enter Password...'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen(
                          toggleThemeMode: () {
                            setState(() {
                              if (themeMode == ThemeMode.light) {
                                ThemeConfigs.dark().getTheme();
                              } else {
                                ThemeConfigs.dark().getTheme();
                              }
                            });
                          },)));
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
                        'Submit',
                        style: textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
