import 'package:flutter/material.dart';

import '../register/register.dart';

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
      appBar: AppBar( title: Center(
        child: Text(
          "login",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Register(),
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
                      builder: (context) => Register(),
                    ));
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?",style: TextStyle(color: Color(0xffdd8560)),),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: FilledButton(  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffdd8560)),
                  onPressed: () {},
                  child: Text(
                    "continue",
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
          ),






          SizedBox(height: 21,),
         OutlinedButton(onPressed: (){}, child: Text(
           "Sign in with google",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),)),
          
          
          SizedBox(height: 21,),
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
          SizedBox(height: 21,),
        ],

      ),
    );
  }
}
