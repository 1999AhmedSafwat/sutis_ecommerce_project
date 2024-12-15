import 'package:flutter/material.dart';

import '../../bottomNavigationBar/navigationBar/navigation.dart';

class AddAdressView extends StatelessWidget {
  const AddAdressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        title: Text("Add Address",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigationbar(),
                ));
          },
        ),
      ),
      body:

      Padding(padding: EdgeInsets.all(10),child: ListView(children: [
        TextField(decoration: InputDecoration(labelText: "Title",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
        SizedBox(height: 30,),
        TextField(decoration: InputDecoration(labelText: "Address",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
        SizedBox(height: 30,),
        TextField(decoration: InputDecoration(labelText: "Building No",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),

        SizedBox(height: 30,),
        TextField(decoration: InputDecoration(labelText: "Floor No",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),

        SizedBox(height: 30,),
        TextField(decoration: InputDecoration(labelText: " Apartment No",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
SizedBox(height: 110,),
        Container(height: 45,decoration: BoxDecoration(),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: FilledButton(  style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffdd8560)),
                onPressed: () {},
                child: Text(
                  "Save",
                ))),
      ],),)
    );
  }
}
