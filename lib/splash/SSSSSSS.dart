import 'package:flutter/material.dart';

class sssss extends StatelessWidget {
  const sssss({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView with Scrollbar"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // التمرير أفقي
            itemCount: 10, // عدد العناصر
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Text ${index + 1}', // النص داخل الـ ListView
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}