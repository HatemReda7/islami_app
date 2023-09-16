import 'package:flutter/material.dart';
import 'package:islami_app/HadethModel.dart';
import 'package:islami_app/myThemeData.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName="Hadeth Details";

  @override
  Widget build(BuildContext context) {
    var args= ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset("assets/images/bg.png"),
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
              margin: const EdgeInsets.only(bottom: 40),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      args.title,
                    ),
                    Divider(
                      thickness: 2,
                      color: MyThemeData.primaryColor,
                      indent: 40,
                      endIndent: 40,
                    ),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(color: Colors.transparent,),
                        itemBuilder: (context, index) {
                          return Center(
                              child: Text(
                                args.content.toString(),
                                style: Theme.of(context).textTheme.bodySmall,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ));
                        },
                        itemCount: 1,
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
}
