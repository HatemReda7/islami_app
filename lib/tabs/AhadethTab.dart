import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/HadethModel.dart';
import '../../assets/images/2.0x/myThemeData.dart';

class AhadethTab extends StatelessWidget {

  List<HadethModel> allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       children: [
         Image.asset("assets/images/ahadeth_image.png"),
         Divider(
           color: MyThemeData.primaryColor,
           thickness: 2,
         ),
         Text(
           "Hadith",
           style: Theme.of(context)
               .textTheme
               .bodyMedium!
               .copyWith(color: MyThemeData.blackColor),
         ),
         Divider(
           color: MyThemeData.primaryColor,
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

                   },
                   child: Center(
                       child: Text(
                         "hadeth 1",
                         style: Theme.of(context).textTheme.bodySmall,
                       )));
             },
             itemCount: 10,
           ),
         )
       ],
      ),
    );
  }

  void loadFile()async{
    String ahadeth= await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadeth= ahadeth.split("#");
    List<String> lines= hadeth[0].split("\n");
    String title= lines[0];
    lines.removeAt(0);
    List<String> content= lines;
    HadethModel hadethModel= HadethModel(title, content);
    allAhadeth.add(hadethModel);
  }
}
