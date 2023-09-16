import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  static const String routeName = "Theme Screen";

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

                },
                child: Text("Light Theme",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {

                },
                child: Text("Dark Theme",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
