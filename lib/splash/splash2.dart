import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/splash/slider.dart';

class Splash2View extends StatefulWidget {
  const Splash2View({super.key});

  @override
  State<Splash2View> createState() => _SplashViewState();
}

class _SplashViewState extends State<Splash2View> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(context,MaterialPageRoute(builder: (context) => SliderPageView(),));
    });
  }





  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff676767),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(

            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(40)),
              Image.asset("assets/images/Group 21.png",width: 100,height: 100,),
              SizedBox(width: 15,),
              Text("suits",style: TextStyle( fontFamily: "Waterfall",fontWeight: FontWeight.w400,fontSize: 128),),
            ],
          )
        ],
      ),
    );
  }
}
