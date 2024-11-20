import 'dart:ffi';

import 'package:flutter/material.dart';

class sssssss extends StatelessWidget {
  const sssssss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset("assets/images/1a0997a06bcaaf6827ccf6be31f127a4 1@2x.png",fit: BoxFit.fill,),
        Column(children: [
          Text("data",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 120,color: Colors.white  ),)
        ],)
      ],),
    );
  }
}
