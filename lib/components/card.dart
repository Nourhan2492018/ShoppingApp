import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(200),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Card(
          elevation: 3,
          color: Colors.blue[300],
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
    );
  }
}
