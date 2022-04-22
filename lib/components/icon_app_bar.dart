import 'package:flutter/material.dart';

class IconAppBar extends StatelessWidget{
  final icon;
  final color;
  IconAppBar(this.icon,this.color);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: (){},
    );
  }


}