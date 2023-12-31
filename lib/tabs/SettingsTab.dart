import 'package:flutter/material.dart';
import 'package:islami_app/Counter_Screen.dart';
import 'package:islami_app/Language_Screen.dart';
import 'package:islami_app/Theme_Screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50,left: 30),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ThemeScreen.routeName);
                },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.left,),
                    const Spacer(),
                    Icon(Icons.navigate_next,size: 40,color: Theme.of(context).cardColor,),
                  ],
                ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LanguageScreen.routeName);
              },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.left,),
                    const Spacer(),
                    Icon(Icons.navigate_next,size: 40,color: Theme.of(context).cardColor,),
                  ],
                )
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, CounterScreen.routeName);
              },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.numoftasbih,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.left,),
                    const Spacer(),
                    Icon(Icons.navigate_next,size: 40,color: Theme.of(context).cardColor,),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
