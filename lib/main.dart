import 'package:flutter/material.dart';
import 'package:islami_app/Hadeth_Details.dart';
import 'package:islami_app/Language_Screen.dart';
import 'package:islami_app/SuraDetails.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/Theme_Screen.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetails.routeName : (context) => const SuraDetails(),
        HadethDetails.routeName : (context) => HadethDetails(),
        ThemeScreen.routeName : (context) =>  ThemeScreen(),
        LanguageScreen.routeName : (context) =>  LanguageScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}