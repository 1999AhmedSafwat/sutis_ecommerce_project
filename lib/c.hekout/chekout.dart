import 'package:flutter/material.dart';

import '../bottomNavigationBar/navigationBar/navigation.dart';
import '../bottomNavigationBar/profile/Payment Methods/PaymentMethods.dart';
import '../myCardes/myCards.dart';

class ChekoutView extends StatefulWidget {
  const ChekoutView({super.key});

  @override
  State<ChekoutView> createState() => _ChekoutViewState();
}

class _ChekoutViewState extends State<ChekoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        centerTitle:true ,
        title: Text("Chekout",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyCardsView(),
                ));
          },
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(10.5),
        child: ListView(
         children: [
          Text(" Shipping Address",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),SizedBox(height: 25,),
          Row(children:
          [Image.asset("assets/images/location.png"),Text("Home",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)],),
          SizedBox(height: 29,),
          Text("Dakahlia, Mansoura, Al-Gamaa District,",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
          Text("Al-Sabahi Street",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),SizedBox(height: 40,),
           _Items(),
           _Items(),
           _Items(),
           SizedBox(height: 20,),

           InkWell(onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethods(),));
           },
             child: Container(width: double.infinity,height: 35,decoration: BoxDecoration(color: Color(0xffdd8560),
                 borderRadius: BorderRadius.circular(10)),
               child: Center(child: Text("Continue to payment",style: TextStyle(color: Color(0xFFFFFFFF)),)),),
           )
        ],),
      ),
    );
  }
}








class _Items extends StatefulWidget {
  const _Items({super.key});

  @override
  State<_Items> createState() => _ItemsState();
}

class _ItemsState extends State<_Items> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,width: 330,decoration: BoxDecoration(
      color: Colors.white12,
    ),
      child: Row(children: [
        Image.asset("assets/images/2fffe4590de01707efcaf816f73149fc 1.png"),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Classic Blazar",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
            SizedBox(height: 22,),
            Text("Size:xl",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
            SizedBox(height: 22,),
            Text("83.97",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),



          ],),


        InkWell(onTap: () {
          setState(() {counter++;});
        },
          child: Container(height: 25,width: 25,decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(5)
          ),
            child: Center(child: Text("+",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30),)),),
        ),
        SizedBox(width: 8,),
        Text(
          '$counter',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 8,),
        InkWell(onTap: () {if (counter >= 1) {
          counter--;
          setState(() {});
        }

        },


          child: Container(height: 25,width: 25,decoration: BoxDecoration(color: Color(0xffdd8560),
              borderRadius: BorderRadius.circular(5)
          ),
            child: Center(child: Text("-",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),)),
          ),










        )],
      ),
    );





  }
}

