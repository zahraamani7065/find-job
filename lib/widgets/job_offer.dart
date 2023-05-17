import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../data/Post.dart';

class JobOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          color: colorScheme.background,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: myJob.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width,
                    color: colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              child: Image.asset(
                            "assets/Logo-Pertamina-resize-2-1 1.png",
                            width: 40,
                            height: 40,
                            fit: BoxFit.fill,
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            localizations.job,
                            style: textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(localizations.companyName,
                              style: textTheme.headline5),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(localizations.location,
                              style: textTheme.headline5),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(localizations.salary,
                              style: textTheme.headline5),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(localizations.salary,
                              style: const TextStyle(
                                  color: Color(0xff14C163),
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(localizations.createJobOffer,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
