import 'package:flutter/material.dart';

import '../bottomNavigationBar/profile/profile.dart';
import 'SSSSSSS.dart';

class aaa extends StatefulWidget {
  const aaa({super.key});

  @override
  State<aaa> createState() => _aaaState();
}

class _aaaState extends State<aaa> {
  int i = 0;
  String? country;
  bool isBodyVisible = true;
  bool isbody = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Traning"),
  backgroundColor: Colors.grey[45],actions: [Icon(Icons.person),],leading: Icon(Icons.star,color: Colors.red[200],),),drawer: Drawer(child: Column(children: [
    Container(height: 100,width: 100,)
    ],),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.star),
      ),
      body: Column(
        children: [



          RichText(
              text: TextSpan(
                  text: "ahmed",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                  children: <TextSpan>[
                TextSpan(
                    text: "safwat",
                    style: TextStyle(color: Colors.blue, fontSize: 20))
              ])),
          SizedBox(
            height: 0,
          ),
          Divider(
            height: 50,
            endIndent: 20,
            indent: 200,
            thickness: 20,
            color: Colors.red,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  i++;
                });
              },
              child: Text("+")),
          Text("Counter= $i "),
          TextButton(
              onPressed: () {
                if (i >= 1) {
                  setState(() {
                    i--;
                  });
                }
                ;
              },
              child: Text("_")),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sssss(),
                    ));
              },
              child: Container(
                  height: 30,
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Ahmed safwat ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey,
                        backgroundColor: Colors.black),
                  )))),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              child: Text(
                "profile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          Switch(
            value: isBodyVisible,
            onChanged: (value) {
              setState(() {
                isBodyVisible = value;
              });
            },
          ),
          SwitchListTile(
            value: isbody,
            onChanged: (value) {
              setState(() {
                isbody = value;
              });
            },
          ),







          RadioListTile(
            title: Text(
              "EgypT",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            value: "Egypt",
            groupValue: country,
            onChanged: (value) {
              setState(() {
                value = country;
              });
            },
          )
        ],
      ),
    );
    
  }
}
