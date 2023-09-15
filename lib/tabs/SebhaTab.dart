import 'package:flutter/material.dart';
import 'package:islami_app/myThemeData.dart';

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
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/sebha.png",
            width: 232,
            height: 312,
          ),
          const SizedBox(height: 40,),
          Text(
            "عدد التسبيحات",
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
                color: const Color(0XFFB7935F),
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
                        MaterialStatePropertyAll(MyThemeData.primaryColor)),
                onPressed: () {
                  if(counter<32){
                    counter++;
                  }else {
                    counter=0;
                    if(index<azkar.length-1){
                      index++;
                    }else {
                      index=0;
                    }
                  }
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    azkar[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
