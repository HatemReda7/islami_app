import 'package:flutter/material.dart';
import 'package:islami_app/Language_Screen.dart';
import 'package:islami_app/Theme_Screen.dart';
import 'package:islami_app/myThemeData.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50,left: 30),
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
                    Text("Theme",style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.left,),
                    Spacer(),
                    Icon(Icons.navigate_next,size: 40,color: MyThemeData.blackColor,),
                  ],
                ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LanguageScreen.routeName);
              },
                child: Row(
                  children: [
                    Text("Language",style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.left,),
                    Spacer(),
                    Icon(Icons.navigate_next,size: 40,color: MyThemeData.blackColor,),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
