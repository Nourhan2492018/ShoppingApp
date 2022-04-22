import 'package:flutter/material.dart';
import 'package:marketingapp/view/login_screen.dart';

import '../view/search_screen.dart';
class MarketingApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
