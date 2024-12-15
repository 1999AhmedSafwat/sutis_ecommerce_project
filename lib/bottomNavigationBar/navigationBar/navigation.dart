import 'package:flutter/material.dart';

import '../../myCardes/myCards.dart';
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
    MyCardsView(),
    ShopingView(),
    Profile(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[
      currentIndex
      ],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xffdd8560),
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
