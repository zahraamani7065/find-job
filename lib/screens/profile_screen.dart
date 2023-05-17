import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuary = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final localizations = AppLocalizations.of(context)!;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: colorScheme.background,
          child: Column(
            children: [
              Container(
                height: mediaQuary.height / 15,
                width: mediaQuary.width,
                decoration: BoxDecoration(
                    color: colorScheme.secondary,
                    border: Border(
                        bottom: BorderSide(
                      width: 3,
                      color: colorScheme.onSecondary,
                    ))),
                child: Center(
                    child: Text(
                  localizations.profile,
                  style: textTheme.bodyText2,
                )),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: mediaQuary.height / 4.5,
                  width: mediaQuary.width,
                  decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  "assets/profile.png",
                                  width: 77,
                                  height: 77,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            // Positioned(
                            //   top: 0,
                            //   left: 0,
                            //   child: Padding(
                            //       padding: EdgeInsets.only(right: 10),
                            //       child: Icon(
                            //         CupertinoIcons.pen,
                            //         size: 30,
                            //         color: colorScheme.primary,
                            //       )),
                            // ),
                          ],
                        ),
                      ),
                      Text(
                        localizations.name,
                        style: textTheme.bodyText2,
                      ),
                      Text(
                        localizations.job,
                        style: textTheme.subtitle1,
                      ),
                      Text(
                        localizations.emailAddress,
                        style: textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: mediaQuary.height / 3.5,
                  width: mediaQuary.width,
                  decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.work,
                                  size: 28,
                                  color: colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  localizations.pengalamankerja,
                                  style: textTheme.headline1,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(Icons.work,
                                    size: 20, color: colorScheme.surface),
                                Icon(Icons.work,
                                    size: 20, color: colorScheme.surface),
                              ],
                            ),
                          ),
                          Icon(
                            CupertinoIcons.add,
                            size: 20,
                            color: colorScheme.primary,
                          )
                        ]),
                        Divider(
                          color: Theme.of(context).colorScheme.onSecondary,
                          height: 12,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          localizations.job,
                          style: textTheme.bodyText2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          localizations.date,
                          style: textTheme.headline4,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          localizations.bio,
                          style: textTheme.headline4,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: mediaQuary.height / 3.5,
                  width: mediaQuary.width,
                  decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.cast_for_education,
                                  size: 28,
                                  color: colorScheme.primary,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  localizations.pengalamankerja,
                                  style: textTheme.headline1,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            CupertinoIcons.add,
                            size: 20,
                            color: colorScheme.primary,
                          )
                        ]),
                        Divider(
                          color: Theme.of(context).colorScheme.onSecondary,
                          height: 12,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          localizations.job,
                          style: textTheme.bodyText2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          localizations.date,
                          style: textTheme.headline4,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          localizations.bio,
                          style: textTheme.headline4,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
