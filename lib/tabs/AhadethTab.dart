import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/HadethModel.dart';
import 'package:islami_app/Hadeth_Details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatelessWidget {

  List<HadethModel> allAhadeth=[];

  AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadHadethFile();
    }
    return Center(
      child: Column(
       children: [
         Image.asset("assets/images/ahadeth_image.png"),
         Divider(
           color: Theme.of(context).indicatorColor,
           thickness: 2,
         ),
         Text(
           AppLocalizations.of(context)!.ahadeth,
           style: Theme.of(context)
               .textTheme
               .bodyMedium,
         ),
         Divider(
           color: Theme.of(context).indicatorColor,
           thickness: 2,
         ),
         Expanded(
           child: ListView.separated(
             separatorBuilder: (context, index) => const Divider(
               color: Colors.transparent,
             ),
             itemBuilder: (context, index) {
               return InkWell(
                   onTap: () {
                     Navigator.pushNamed(context, HadethDetails.routeName,
                     arguments: allAhadeth[index]
                     );
                   },
                   child: Center(
                       child: Text(
                         allAhadeth[index].title,
                         style: Theme.of(context).textTheme.bodySmall,
                       )
                   )
               );
             },
             itemCount: allAhadeth.length,
           ),
         )
       ],
      ),
    );
  }

  void loadHadethFile(){
    rootBundle.loadString("assets/files/ahadeth.txt")
        .then((ahadeth){
      List<String> ahadethList= ahadeth.split("#");
      for(int i=0;i<ahadethList.length;i++){
        String hadethOne= ahadethList[i];
        List<String> lines= hadethOne.trim().split("\n");
        String title= lines[0];
        lines.removeAt(0);
        List<String> content=lines;
        HadethModel hadethModel=HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
    },).catchError((e){
    });

  }
}
