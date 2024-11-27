import 'package:flutter/material.dart';

class FavouritView extends StatelessWidget {
  const FavouritView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Center(child: Text("Favourit",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),))
    ],),);
  }
}
