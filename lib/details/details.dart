import 'package:flutter/material.dart';

import '../bottomNavigationBar/profile/Payment Methods/PaymentMethods.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            "assets/images/2fffe4590de01707efcaf816f73149fc 1.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Container(
            height: 370,
            width: 360,
            decoration: BoxDecoration(
              color: Color(
                0xfff4f5f7,
              ),
              borderRadius: BorderRadius.only( topLeft: Radius.circular(30),topRight: Radius.circular(25)),
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Row(
                  children: [
                    Text(
                      "Famale Style",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      width: 201,
                    ),
                    Image.asset("assets/images/stars.png"),
                    Text("5.0")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Classic Blazar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 4,),
                Text("Product Details",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                Text("cotton sweat shirt with a text point",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                Row(children: [
                  Text("Quality",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  SizedBox(width: 26,),
                  Container(width: 201,height: 30, decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10),),
                    child:
                    Row(
                      children: [

                        TextButton(
                          onPressed: () {setState(() {counter++;});},
                          child: Text("+",style: TextStyle(color: Colors.black),),
                        ),Text(
                          'Value: $counter',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () { if (counter >= 1) {
                            counter--;
                            setState(() {});
                          }

                          },
                          child: Text("-",style: TextStyle(color: Colors.black),),
                        ),
                      ],),

                  ),],),Divider(),
              Row(children: [
                Text("Color:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
SizedBox(width: 15,),


                Container(width: 20,height: 20,decoration: BoxDecoration(color:Color(0xff4E6542),borderRadius: BorderRadius.circular(50)),),
                SizedBox(width: 20,),
                Container(width: 20,height: 20,decoration: BoxDecoration(color:Color(0xff323232),borderRadius: BorderRadius.circular(50)),),
                SizedBox(width: 20,),
                Container(width: 20,height: 20,decoration: BoxDecoration(color: Color(0xffc11D1D),borderRadius: BorderRadius.circular(50)),),
                SizedBox(width: 20,),

                Container(width: 20,height: 20,decoration: BoxDecoration(color:Color(0xff979696),borderRadius: BorderRadius.circular(50)),),
              ],),SizedBox(height: 20,),
                Row(children: [
                  Text("Size:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  SizedBox(width: 15,),
                  Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),child: Center(child: Text("S",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),),SizedBox(width: 10,),
                  Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),child: Center(child: Text("M",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),),SizedBox(width: 10,),
                  Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),child: Center(child: Text("L",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),),SizedBox(width: 10,),
                  Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),child: Center(child: Text("XL",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),),SizedBox(width: 10,),
                ],),
              SizedBox(height: 20,),
             InkWell(onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethods(),));
             },

                 child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffDD8560)),child: Center(child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),)),))

              ],
            ),
          ),
          bottom: 0,
        )
      ],
    ));
  }
}