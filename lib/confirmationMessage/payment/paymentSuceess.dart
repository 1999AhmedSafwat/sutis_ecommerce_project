import 'package:flutter/material.dart';

import '../../login/login.dart';
import '../../register/register.dart';

class paymentSuccessful extends StatelessWidget {
  const paymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Payment",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Register(),
                ));
          },
        ),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              height: 150,
            ),
            Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("assets/images/like.png",)),
                      borderRadius: BorderRadius.circular(50)),


                )),
            SizedBox(
              height: 26,
            ),
            Text(
              "Payment Successful!",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Thank you for your purchase.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
             Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));} ,
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
            SizedBox(height: 10,),
            Text("View E-Receipt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
          ],
        ),
      ),
    );
  }
}
