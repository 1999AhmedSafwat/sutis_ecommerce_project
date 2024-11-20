import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/register/register.dart';
import 'package:project/splash/SSSSSSS.dart';
import 'package:project/splash/slider.dart';
import 'package:project/splash/splash.dart';

import 'login/login.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderPageView  (),
    );
  }
}







MaterialColor getMaterialColor(){
  Color color = Color(0xffdd8560);
  return MaterialColor(color.value, {
    50:color.withOpacity(.1),
    100:color.withOpacity(.2),
    200:color.withOpacity(.3),
    300:color.withOpacity(.4),
    400:color.withOpacity(.5),
    500:color.withOpacity(.6),
    600:color.withOpacity(.7),
    700:color.withOpacity(.8),
    800:color.withOpacity(.9),
    900:color,

  });

}