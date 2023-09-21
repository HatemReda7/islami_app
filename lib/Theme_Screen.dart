import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeScreen extends StatefulWidget {
  static const String routeName = "Theme Screen";

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  bool flag1=false;

  bool flag2=false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/bg.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
            title: Text(
          "Islami",
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
                  flag1=true;
                  flag2=false;
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("Light Theme",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Visibility(
                          visible: flag1,
                          child: Icon(Icons.check,color: MyThemeData.blackColor,size: 30,)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  flag1=false;
                  flag2=true;
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("Dark Theme",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Visibility(
                          visible: flag2,
                          child: Icon(Icons.check,color: MyThemeData.blackColor,size: 30,)),
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
