import 'package:flutter/material.dart';
import 'LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // if(Constants.isLogined){
    //
    // );
    // }else{
    // return MaterialApp(
    // home: LandingPage(),
    // );
    // }
    return MaterialApp(
      theme: ThemeData(

      ),
      home: LandingPage(),
    );
  }
}



