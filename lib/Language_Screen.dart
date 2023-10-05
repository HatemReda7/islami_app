import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageScreen extends StatefulWidget {
  static const String routeName = "Language Screen";
  static String lang = "";

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
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
                  pro.changeLanguage("en");
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("English",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: pro.languageCode == "en"
                                ? Theme.of(context).indicatorColor
                                : Theme.of(context).cardColor
                        )),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: pro.languageCode == "en"
                          ? Icon(
                              Icons.check,
                              color: pro.languageCode == "en"
                                  ? Theme.of(context).indicatorColor
                                  : Theme.of(context).cardColor,
                              size: 30,
                            )
                          : SizedBox.shrink(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  pro.changeLanguage("ar");
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("عربي",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: pro.languageCode == "ar"
                                ? Theme.of(context).indicatorColor
                                : Theme.of(context).cardColor
                        )),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: pro.languageCode == "ar"
                          ? Icon(
                              Icons.check,
                              color: pro.languageCode == "ar"
                                  ? Theme.of(context).indicatorColor
                                  : Theme.of(context).cardColor,
                              size: 30,
                            )
                          : SizedBox.shrink(),
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
