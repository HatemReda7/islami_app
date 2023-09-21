import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:islami_app/tabs/AhadethTab.dart';
import 'package:islami_app/tabs/QuranTab.dart';
import 'package:islami_app/tabs/RadioTab.dart';
import 'package:islami_app/tabs/SebhaTab.dart';
import 'package:islami_app/tabs/SettingsTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    const RadioTab(),
    const SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.appTitle,
                style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
              )
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon:
                    const ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "Quran",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage("assets/images/Group 6.png")),
                    label: "Ahadeth",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage("assets/images/sebha_icon.png")),
                    label: "Sebha",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon:
                    const ImageIcon(AssetImage("assets/images/radio.png")),
                    label: "Radio",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: "Settings",
                    backgroundColor: MyThemeData.primaryColor),
              ]),
          body: tabs[index],
        ),
      ],
    );
  }
}
