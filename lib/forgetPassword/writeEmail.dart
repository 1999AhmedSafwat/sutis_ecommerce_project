import 'package:flutter/material.dart';

import '../register/register.dart';
import '../verificationCode/verificationCode.dart';
import 'forget.dart';

class WriteEmil extends StatefulWidget {
  const WriteEmil({super.key});

  @override
  State<WriteEmil> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<WriteEmil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Forget Password?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 24),
          Text(
            "Enter your email or your phone number, we will send you confirmation code.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white70, // Move the color here
              borderRadius: BorderRadius.circular(12),
            ),
            height: 55,
            width: 326,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(onTap: () {},
                child: Container(color: Colors.black12,
                  width: 100,
                  child: Text("email"),
                ),
              ),SizedBox(width: 50,),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
                },
                  child: Container(color: Colors.white10
                    ,
                    width: 100,
                    child: Text("phone"),
                  ),

                ),


              ],
            ),
          )
          ,
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 15,
          ),

          TextField(

            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24)
                ),
                hintText: "Write Email",
                prefixIcon: Image.asset("assets/images/Email.png")
              ),
          ),


          SizedBox(height: 32,),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: FilledButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffdd8560)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Verificationcode(),));
                  },
                  child: Text(
                    "Reset Password",
                  ))),
        ],
      ),
    );
  }
}
