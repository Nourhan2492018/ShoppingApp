import 'package:flutter/material.dart';
import 'package:marketingapp/components/icon_app_bar.dart';
class MarketingAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// you can add more fields that meet your needs
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(1),
      leading:IconAppBar(Icons.apps_sharp,Colors.blue) ,
      title: Text('Shoping',
      style: TextStyle(color: Colors.blue, fontSize: 30,),),
      actions: [
        IconAppBar(Icons.share,Colors.blue),
        IconAppBar(Icons.favorite_border,Colors.blue),
      ],
    );
  }
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}