import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'Splash';

  const SplashScreen({super.key});

  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Image.asset(
          pro.themeMode == ThemeMode.light
              ? "assets/images/splash.png"
              : "assets/images/splash – 1.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
