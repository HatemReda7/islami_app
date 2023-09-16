import 'package:flutter/material.dart';
import 'package:islami_app/Hadeth_Details.dart';
import 'package:islami_app/SuraDetails.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/myThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetails.routeName : (context) => const SuraDetails(),
        HadethDetails.routeName : (context) =>  HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}