import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledLgin extends StatelessWidget {
  late String hint ,label;
  final preicon, sufficon;

  TextFiledLgin(this.hint, this.label, this.preicon, this.sufficon);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted:(pass){},
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.remove_red_eye_rounded),
        labelText: 'Password',
        border:OutlineInputBorder(),
        hintText: 'Enter Your password',
      ),
    );
  }
}
