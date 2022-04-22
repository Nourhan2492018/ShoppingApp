import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketingapp/components/button.dart';
import 'package:marketingapp/components/marketing_app_bar.dart';
import 'package:marketingapp/components/text_info.dart';
import 'package:marketingapp/components/textfromfelid.dart';
import 'package:marketingapp/src/marketing_app.dart';
import 'package:marketingapp/view/search_screen.dart';
class LoginScreen extends StatelessWidget {
  var email=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,elevation: 0,),
      body: SingleChildScrollView(
        child: Container(color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical:30,
                horizontal: 20,
              ),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2000.0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image(
                          height: 150,
                          width: 150,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVkQNzvwgp3L9y_HWqBKx8Dw-bHJSD_RakSK7lZf8jZ1GTk5mSXfwNv2Yqa2ezSCa0oMM&usqp=CAU'
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFromFiled(Icon(Icons.email_outlined), email, 'Email', 'enter your email',TextInputType.emailAddress,false),
                      SizedBox(height: 15,),
                      TextFromFiled(Icon(Icons.lock), pass, 'Password', 'enter your pass',TextInputType.visiblePassword,true,suficon: Icon(Icons.remove_red_eye_outlined)),
                      SizedBox(height: 30,),
                      Button(this.pass, this.email, SearchScreen(),Icon(Icons.login,color: Colors.white),'Login'),
                      SizedBox(height: 20,),
                      Card(
                        elevation: 3,
                        color: Colors.white,
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        child:TextInfo("if you haven't Account ?", 20,FontStyle.normal,Colors.blue),
                      ),
                      SizedBox(height: 20,),
                      Button(this.pass, this.email, SearchScreen(),Icon(Icons.login,color: Colors.white),'Register Now'),
                    ]),

            ),
     
        ),
      ),
    );
  }
}
