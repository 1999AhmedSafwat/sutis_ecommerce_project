import 'package:flutter/material.dart';

import '../login/login.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [SizedBox(height: 33,),
          Row(children: [Padding(padding: EdgeInsets.all(10)),
            Container(height: 370,width: 140,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),child: Image.asset("assets/images/start1.png"),),
SizedBox(width: 30,),
            Column(children: [
              Container(height: 210,width: 140,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),child: Image.asset("assets/images/start2.png"),),
SizedBox(height: 23,),
              Container(height: 130,width: 140,decoration: BoxDecoration(  shape: BoxShape.circle,),child: Image.asset("assets/images/start3.png"),),

            ],
            )
          ],),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "The ",
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: "Suits App",
                  style: TextStyle(color: Color(0xffdd8560), fontWeight: FontWeight.w700, fontSize: 20),
                ),
                TextSpan(
                  text: " that.",
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
           Text("Makes Your Look Your Best",
            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          SizedBox(height: 25,),
          Text("Everything you need in the world",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
          SizedBox(height: 3,),
          Text("  of fashion, old and new",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
          SizedBox(height: 75,),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: FilledButton(  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffdd8560)),
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));
                  },
                  child: Text(
                    "Get started",
                  ))),

        ],),
      ),
    );
  }
}
