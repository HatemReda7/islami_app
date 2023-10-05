import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/SuraModel.dart';
import 'package:islami_app/myThemeData.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "Sura Details";

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          pro.themeMode==ThemeMode.light?
          "assets/images/bg.png":"assets/images/bg_dark.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(30),
            child: Card(
              color: pro.themeMode==ThemeMode.light?Colors.white:MyThemeData.darkPrimaryColor,
              margin: const EdgeInsets.only(bottom: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.right,
                          args.name,
                          style: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor
                        ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                         ImageIcon(
                            AssetImage("assets/images/circle_play.png"),color: Theme.of(context).secondaryHeaderColor,)
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Theme.of(context).indicatorColor,
                      indent: 40,
                      endIndent: 40,
                    ),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(
                          color: Colors.transparent,
                        ),
                        itemBuilder: (context, index) {
                          return Center(
                              child: Text(
                            "${verses[index]}(${index+1})",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).secondaryHeaderColor),
                            textAlign: TextAlign.center,
                          ));
                        },
                        itemCount: verses.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    verses = lines;
    setState(() {});
  }
}
