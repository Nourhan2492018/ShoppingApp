
import 'package:flutter/material.dart';
import 'package:marketingapp/logic/checkValidationData.dart';
class Button extends StatelessWidget {
  TextEditingController pass,email;
  Widget Screen;
  String txt;
  final icon;
  Button(this.pass, this.email, this.Screen,this.icon,this.txt);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(2000.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(onPressed: (){
        if(CheckValidationData(email.value.text,pass.value.text).Valid())
        {
            Navigator.push(context,
              MaterialPageRoute(
                builder:(context)=>Screen,
              ),
            );
        }
      },
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [icon,
            Text(txt,
              style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
