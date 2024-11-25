import 'package:flutter/material.dart';

import '../../login/login.dart';

class welcomeHome extends StatelessWidget {
  const welcomeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(
            height: 150,
          ),
          Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Color(0xfff5f8ff),image: DecorationImage(image: AssetImage("assets/images/like.png")),
                    borderRadius: BorderRadius.circular(50)),


              )),
          SizedBox(
            height: 26,
          ),
          Text(
            "Yeay! Welcome Back",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Once again you login successfully",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "into medidoc app",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 21,
          ),
          Container(
              width: 183,height: 56,
              //margin: EdgeInsets.symmetric(horizontal: 5),
              child: FilledButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffdd8560)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));


                  },
                  child: Text(
                    "Go to home",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                  ))),
        ],
      ),
    );
  }
}
