import 'package:flutter/material.dart';
import 'package:marketingapp/components/card.dart';
class RowCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardItem(),
        Expanded(
          child: Container(
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(200),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Card(
              elevation: 3,
              color: Colors.blue[100],
              shadowColor: Colors.white,
              clipBehavior:Clip.antiAliasWithSaveLayer,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Follow',
                    style: TextStyle(

                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
