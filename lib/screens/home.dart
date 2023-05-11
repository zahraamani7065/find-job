import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function() toggleThemeMode;

  const HomeScreen({super.key, required this.toggleThemeMode});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                      InkWell(
                        onTap: () {
                          widget.toggleThemeMode;
                        },
                        child:  Icon(
                        CupertinoIcons.brightness_solid,
                        color: Colors.indigoAccent,
                      ),
                      )


              ],
            ),
            body: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      InkWell(
                        onTap: () {
                          print("hello985785");
                        },
                      );
                    },
                    child: Text('fdfd'))
              ],
            )));
  }
}
