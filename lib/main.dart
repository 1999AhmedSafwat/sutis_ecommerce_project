import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/splash/SSSSSSS.dart';
import 'bottomNavigationBar/home/home.dart';
import 'login/login.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView  (),
    );
  }
}





