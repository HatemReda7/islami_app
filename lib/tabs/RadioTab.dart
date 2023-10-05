import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/radio_image.png"),
          const SizedBox(height: 70,),
          Text(AppLocalizations.of(context)!.ezaatquran, style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 25,),),
          const SizedBox(height: 60,),
          SizedBox(
            width: 330,
            height: 36,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageIcon(const AssetImage("assets/images/Icon metro-back.png"),color: Theme.of(context).indicatorColor),
                ImageIcon(const AssetImage("assets/images/Icon awesome-play.png"),color: Theme.of(context).indicatorColor,size: 36,),
                ImageIcon(const AssetImage("assets/images/Icon metro-next.png"),color: Theme.of(context).indicatorColor,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
