import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/main_screen.dart';


class bottomNavigation extends StatefulWidget {
  final Function(int index) onTap;
  final int selectedIndex;

  const bottomNavigation(
      {super.key, required this.onTap, required this.selectedIndex});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border:Border(top: BorderSide(width: 3,color: Theme.of(context).colorScheme.onSecondary)),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 60, right: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavigationItem(
              iconFileName: Icons.home,
              activeIconFileName: 'home',
              title: 'home',
              onTap: () {
                widget.onTap(homeIndex);
              },
              isActive: widget.selectedIndex == homeIndex,
            ),

            BottomNavigationItem(
              iconFileName: Icons.person,
              activeIconFileName: 'profile',
              title: 'profile',
              onTap: () {
                widget.onTap(profileIndex);
              },
              isActive: widget.selectedIndex == profileIndex,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatefulWidget {
  final IconData iconFileName;
  final String activeIconFileName;
  final String title;
  final bool isActive;
  final Function() onTap;

  const BottomNavigationItem(
      {super.key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.title,
      required this.onTap,
      required this.isActive});

  @override
  State<BottomNavigationItem> createState() => _BottomNavigationItemState();
}
class _BottomNavigationItemState extends State<BottomNavigationItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        child:
        AnimatedContainer(
            duration:const Duration(milliseconds: 500),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(16),
               color:widget.isActive ? Colors.grey.shade400 : Colors.grey.shade500
            ),
            curve: Curves.easeIn,

              child:widget.isActive ? Padding(
                padding: EdgeInsets.all(4),

                child: Row(
                  children: [
                    Icon(widget.iconFileName),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      widget.title,
                      style: const TextStyle(color: Colors.white38),
                    ),
                    const SizedBox(
                      width: 4,
                    )
                  ],
                ),
              )
            : SizedBox(
             child: Icon(
              widget.iconFileName,
              color: Colors.black54,)

              ),
                ),
        );

  }
}
