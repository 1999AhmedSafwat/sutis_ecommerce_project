import 'package:flutter/material.dart';

import '../confirmationMessage/successLogin/success.dart';
import '../forgetPassword/forget.dart';
import '../register/register.dart';
import '../splash/start.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
       title: Text("login",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartView(),
                ));
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(11),
        children: [
          Center(child: Text("Hi Welcome back, you’ve been missed",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)),
          SizedBox(height: 39,),

          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24)),
                labelText: "Enter your email",
                prefixIcon: Image.asset("assets/images/mail 1 (1).png")),
          ),
          SizedBox(height: 16,),
          TextFormField(
            controller: passwordController,

            keyboardType: TextInputType.text,
            obscureText: isPasswordHidden,
            decoration: InputDecoration(  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24)),
                labelText: "Enter your password",
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {
                    isPasswordHidden = !isPasswordHidden;
                    setState(() {});
                  },
                ),
                prefixIcon: Image.asset(
                  "assets/images/password 1 (1).png",
                )
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(

              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPassword(),
                    ));
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?",style: TextStyle(color: Color(0xffdd8560)),),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: FilledButton(  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffdd8560)),
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                  },
                  child: Text(
                    "login",
                  ))),
          SizedBox(
            height: 19,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("  Don’t have an account? "),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ));
                  },
                  child: Text("Sign Up",style: TextStyle(color: Color(0xffdd8560)),))
            ],
          ),SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey, // لون الخط
                  thickness: 1, // سمك الخط
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "OR",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
            ],
          ),


 SizedBox(height: 30,),
          Container(height: 50,
              width: double.infinity,decoration: BoxDecoration(),
              margin: EdgeInsets.symmetric(horizontal: 0),
              child: FilledButton( style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xFFFFFFFF)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmation(),));


                  },
                 child: Row(children: [
                   Image.asset("assets/images/google (3) 1.png"),
                   SizedBox(width: 52,),
                   Text("Sign in with google",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
    ],),
          ),
        // InkWell(onTap: () {
        // },
        //     child: Container(
        //       height: 60,
        //       width: 200,
        //       decoration: BoxDecoration(color: Colors.red,
        //         border: Border.all(
        //           color: Colors.grey.withOpacity(1.0),
        //           width: 1.0,
        //         ),
        //         borderRadius: BorderRadius.circular(32), // Uniform radius
        //       ),child: Row(children: [
        //         Text("dmdmdmddm")
        //     ],),
        //     ),
          ),



          SizedBox(height: 16,),
          Container(height: 50,
            width: double.infinity,decoration: BoxDecoration(),
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: FilledButton( style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xFFFFFFFF)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmation(),));


              },
              child: Row(children: [
                Image.asset("assets/images/apple.png"),
                SizedBox(width: 52,),
                Text("Sign in with Apple",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
              ],),
            ),

          ),
          SizedBox(height: 16,),
          Container(height: 50,
            width: double.infinity,decoration: BoxDecoration(),
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: FilledButton( style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xFFFFFFFF)),
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmation(),));
              },
              child: Row(children: [
                Image.asset("assets/images/facebook (2) 1 (1).png"),
                SizedBox(width: 52,),
                Text("Sign in with Facebook",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
              ],),
            ),

          ),

        ],

      ),
    );
  }
}
