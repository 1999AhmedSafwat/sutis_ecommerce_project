import 'package:flutter/material.dart';

import '../bottomNavigationBar/navigationBar/navigation.dart';
import '../confirmationMessage/payment/paymentSuceess.dart';
import '../register/register.dart';

class Addcard extends StatelessWidget {
  const Addcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Card",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              height: 225,
              width: double.infinity,
              child: Image.asset("assets/images/visaGold.png"),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text(
                "Card Holder Name",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Ahmed ',
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(15),
               ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text(
                "Card Number",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
            SizedBox(height: 8,),

            TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '45284516698512695112 ',
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(15),

                ),
               ),
            ),
            SizedBox(height: 22,),




Row(children: [
  Expanded(child: Text("data")),
  
  Expanded(child: Text("data")),


],),
SizedBox(height: 8,),
            Row( children: [
              Container(height: 40,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),child:  TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '02/30 ',
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),),
              SizedBox(width: 26,),

              Container(height: 40,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),child:  TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '000 ',
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),),
SizedBox(height: 15,),


            ],),
            SizedBox(height: 10,),
Text("Save Card",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => paymentSuccessful(),));} ,
                child: Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffdd8560),
                      borderRadius: BorderRadius.circular(10),
                    ),child: Center(child: Text("Confirm Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color:Color(0xFFFFFFFF))),)
                ),
              ),
            ),







          ],
        ),
      ),
    );
  }
}
