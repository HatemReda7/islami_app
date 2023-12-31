import 'package:flutter/material.dart';
import 'package:islami_app/Counter_Screen.dart';
import 'package:islami_app/Hadeth_Details.dart';
import 'package:islami_app/Language_Screen.dart';
import 'package:islami_app/SplashScreen.dart';
import 'package:islami_app/SuraDetails.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/Theme_Screen.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/preference_helper.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  PrefsHelper.prefs= await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider()..init(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetails.routeName : (context) => const SuraDetails(),
        HadethDetails.routeName : (context) => const HadethDetails(),
        ThemeScreen.routeName : (context) =>  const ThemeScreen(),
        LanguageScreen.routeName : (context) =>  const LanguageScreen(),
        CounterScreen.routeName : (context) =>  const CounterScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: pro.themeMode,
    );
  }
}