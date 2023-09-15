import 'package:flutter/material.dart';

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
          SizedBox(height: 80,),
          Text("إذاعة القرآن الكريم", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 25),),
          SizedBox(height: 50,),
          Row(
            children: [
              ImageIcon(AssetImage("assets/images/icon metro-back.png")),
              ImageIcon(AssetImage("assets/images/icon awesome-play.png")),
              ImageIcon(AssetImage("assets/images/icon metro-next.png")),
            ],
          )
        ],
      ),
    );
  }
}
