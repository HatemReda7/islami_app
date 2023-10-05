import 'package:flutter/material.dart';
import 'package:islami_app/preference_helper.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CounterScreen extends StatefulWidget {
  static const String routeName = "Counter Screen";
  static String lang = "";

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
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
                  pro.changeCounter(33);
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("33",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: pro.tasbihCounter==33
                                ? Theme.of(context).indicatorColor
                                : Theme.of(context).cardColor
                        )),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: pro.tasbihCounter==33
                          ? Icon(
                        Icons.check,
                        color: pro.tasbihCounter==33
                            ? Theme.of(context).indicatorColor
                            : Theme.of(context).cardColor,
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
                  pro.changeCounter(100);
                  setState(() {});
                },
                child: Row(
                  children: [
                    Text("100",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: pro.tasbihCounter==100
                                ? Theme.of(context).indicatorColor
                                : Theme.of(context).cardColor
                        )),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: pro.tasbihCounter==100
                          ? Icon(
                        Icons.check,
                        color: pro.tasbihCounter==100
                            ? Theme.of(context).indicatorColor
                            : Theme.of(context).cardColor,
                        size: 30,
                      )
                          : const SizedBox.shrink(),
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
