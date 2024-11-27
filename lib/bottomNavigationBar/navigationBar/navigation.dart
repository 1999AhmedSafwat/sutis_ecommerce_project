import 'package:flutter/material.dart';

import '../favourit/favourit.dart';
import '../home/home.dart';
import '../profile/profile.dart';
import '../shoping/shoping.dart';
class Navigationbar extends StatefulWidget {
  const Navigationbar ({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {

  int currentIndex=0;
  List<Widget> pages=[
    HomeView(),
    ShopingView(),
    FavouritView(),
    Profile(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[
      currentIndex
      ],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex:currentIndex ,
        onTap: (value) {
          currentIndex=value;
          setState(() {

          });},
      ),
    );
  }
}
