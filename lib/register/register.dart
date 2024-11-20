import 'package:flutter/material.dart';

import '../splash/slider.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Center(
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SliderPageView(),
                ));
          },
        ),
      ),
      body: Expanded(
        child: ListView(
          padding: EdgeInsets.all(17),
          children: [
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)),
                  hintText: "Enter your name",
                  prefixIcon: Image.asset("assets/images/user (7) 1 (1).png")),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)),
                  labelText: "Enter your email",
                  prefixIcon: Image.asset("assets/images/mail 1 (1).png")),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.number,
              obscureText: isPasswordHidden,
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)),
                  labelText: "Enter your password",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.visibility_off),
                    onPressed: () {
                      isPasswordHidden = !isPasswordHidden;
                      setState(() {});
                    },
                  ),
                  prefixIcon: Image.asset("assets/images/password 1 (1).png")),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "I agree to the medidoc   ", // Terms of Service
                      style: TextStyle(
                        color: Colors.black, // لون النص الأساسي
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms of Service 8 ", // الجزء الملون
                          style: TextStyle(
                            color: Color(0xffdd8560), // لون الجزء الملون
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "end", // جزء جديد غير ملون
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy", // جزء جديد غير ملون
                          style: TextStyle(
                            color: Color(0xffdd8560),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 38,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: FilledButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffdd8560)),
                    onPressed: () {},
                    child: Text(
                      "Sign UP",
                    ))),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("  Don’t have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SliderPageView(),
                        ));
                  },
                  child: Text(
                    " Sign Up",
                    style: TextStyle(color: Color(0xffdd8560)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
