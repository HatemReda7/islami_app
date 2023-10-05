import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeScreen extends StatefulWidget {
  static const String routeName = "Theme Screen";

  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Stack(children: [
      Image.asset(
        pro.themeMode==ThemeMode.light?
        "assets/images/bg.png":"assets/images/bg_dark.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
            title: Text(
          AppLocalizations.of(context)!.appTitle,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
        )),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.light);
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("Light Theme",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: pro.themeMode == ThemeMode.light
                              ? Theme.of(context).indicatorColor
                              : Theme.of(context).cardColor
                        )),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: pro.themeMode == ThemeMode.light
                          ? Icon(
                              Icons.check,
                              color:MyThemeData.primaryColor,
                              size: 30,
                            )
                          : const SizedBox.shrink(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.dark);
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("Dark Theme",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: pro.themeMode == ThemeMode.dark
                                ? Theme.of(context).indicatorColor
                                : Theme.of(context).cardColor
                        )),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: pro.themeMode == ThemeMode.light
                          ? const SizedBox.shrink()
                          : Icon(
                              Icons.check,
                              color: pro.themeMode == ThemeMode.dark
                                  ? Theme.of(context).indicatorColor
                                  : Theme.of(context).cardColor,
                              size: 30,
                            ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
