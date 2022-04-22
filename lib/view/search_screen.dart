import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketingapp/components/icon_app_bar.dart';
import 'package:marketingapp/components/icon_tab.dart';
import 'package:marketingapp/components/row_card.dart';
import 'package:marketingapp/components/text_info.dart';
import 'package:marketingapp/components/textfromfelid.dart';

import '../components/marketing_app_bar.dart';

class SearchScreen extends StatelessWidget {
  var email=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar:MarketingAppBar(),
      body: SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical:30,
              horizontal: 20,
            ),
            child: Column(
              children: [
                TextFromFiled(Icon(Icons.search), email, 'search', 'you can search',TextInputType.name,false),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      IconTab( IconAppBar(Icons.emoji_food_beverage,Colors.white),TextInfo("Teas", 16.0 ,FontStyle.normal,Colors.blue)),
                      IconTab( IconAppBar(Icons.shopping_cart_outlined,Colors.white),TextInfo("Cart", 16.0 ,FontStyle.normal,Colors.blue)),
                      IconTab( IconAppBar(Icons.workspaces_outline,Colors.white),TextInfo("buy", 16.0 ,FontStyle.normal,Colors.blue)),
                      IconTab( IconAppBar(Icons.shopping_cart,Colors.white),TextInfo("Shopping", 16.0 ,FontStyle.normal,Colors.blue)),
                      IconTab( IconAppBar(Icons.shopping_cart_outlined,Colors.white),TextInfo("Cart", 16.0 ,FontStyle.normal,Colors.blue)),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                RowCard(),
                RowCard(),
                RowCard(),
              ],
            ),
          ),

        ),
      ),
    );
  }
//AppBar(backgroundColor: Colors.white,elevation: 0,)

}
