import 'package:flutter/material.dart';
class Navigationbar extends StatefulWidget {
  const Navigationbar ({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {

  int currentIndex=0;
  List<Widget> pages=[

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
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
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
