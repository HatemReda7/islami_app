import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Counter_Screen.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});


  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar=["الْلَّهُ أَكْبَرُ","سُبْحَانَ اللَّهِ وَبِحَمْدِهِ", "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ","أستغفر الله", "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ","لَا إِلَهَ إِلَّا اللَّهُ"];

  int index=0;
  int counter=0;

  @override
  Widget build(BuildContext context) {
    var pro= Provider.of<MyProvider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset(
            pro.themeMode==ThemeMode.light?
            "assets/images/sebha.png":"assets/images/sebha_dark.png",
            width: 232,
            height: 312,
          ),
          const SizedBox(height: 40,),
          Text(
            AppLocalizations.of(context)!.numoftasbih,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w100),
          ),
          const SizedBox(height: 30,),
          Container(
            width: 70,
            height: 80,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              "$counter",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
                style: ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    backgroundColor:
                        MaterialStatePropertyAll(Theme.of(context).indicatorColor)),
                onPressed: () {
                  tasbihLogic();
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    azkar[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: pro.themeMode==ThemeMode.light? const Color(0xffFFFFFF):const Color(0xff0F1424)),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}