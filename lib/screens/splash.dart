import 'package:find_job_app/screens/login.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  final Function() toggleThemeMode;
  final Function(Language) selectedLanguageChane;
  const SplashScreen({super.key, required this.toggleThemeMode, required this.selectedLanguageChane});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((value) => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return LoginScreen(toggleThemeMode: widget.toggleThemeMode, selectedLanguageChane: widget.selectedLanguageChane,);
        })));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF80A1F5),
              Color(0xFF1F3F8E),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'kimta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  'kerja',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.overline),
                ),

                  // InkWell(
                  //   onTap: (){
                  //     widget.toggleThemeMode;
                  //
                  //   },child: Text('fdfd')
                  // )

              ],
            ))),
      ),
    );
  }
}
