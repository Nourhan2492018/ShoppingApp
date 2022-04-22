import 'package:flutter/material.dart';
import 'package:marketingapp/components/icon_app_bar.dart';
import 'package:marketingapp/components/text_info.dart';

class IconTab extends StatelessWidget {

  IconAppBar iconAppBar;
  TextInfo txt;

  IconTab(this.iconAppBar, this.txt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(2000),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          Card(
            child:IconButton(
              iconSize: 20,
              onPressed: (){},
              icon: iconAppBar,//IconAppBar(Icons.emoji_food_beverage,Colors.white,),
            ),

            elevation: 3,
            shadowColor: Colors.white,
            color: Colors.blueAccent,
            clipBehavior:Clip.antiAliasWithSaveLayer,

          ),
          SizedBox(height: 5,),
          txt,
        ],
      ),
    );
  }
}
