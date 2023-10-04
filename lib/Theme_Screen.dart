import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeScreen extends StatefulWidget {
  static const String routeName = "Theme Screen";

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {


  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Stack(children: [
      Image.asset(
        "assets/images/bg.png",
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
          padding: const EdgeInsets.only(top: 80, left: 40),
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
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: pro.themeMode==ThemeMode.light?Icon(Icons.check,color: MyThemeData.blackColor,size: 30,):SizedBox.shrink(),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.dark);
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("Dark Theme",
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: pro.themeMode==ThemeMode.light?SizedBox.shrink(): Icon(Icons.check,color: MyThemeData.blackColor,size: 30,),
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
