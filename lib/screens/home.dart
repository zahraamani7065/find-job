
import 'package:find_job_app/widgets/job_offer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  final Function() toggleThemeMode;

  const HomeScreen({super.key, required this.toggleThemeMode});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final localizations = AppLocalizations.of(context)!;
    TextEditingController myController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics:  const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 8.9,
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 17, 20, 0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: CupertinoSearchTextField(
                            controller: myController,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints:
                            const BoxConstraints(minWidth: 22, maxWidth: 22),
                        onPressed: widget.toggleThemeMode,
                        icon: const Icon(
                          CupertinoIcons.brightness_solid,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        localizations.itemsCount,
                        style: textTheme.headline2,
                      ),
                      Icon(
                        CupertinoIcons.line_horizontal_3_decrease,
                        color: Theme.of(context).colorScheme.surface,
                        size: 20,
                      )
                    ],
                  ),
                ]),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.onSecondary,
              height: 6,
            ),
            JobOffer()
          ],
        ),
      ),
    ));
  }
}
