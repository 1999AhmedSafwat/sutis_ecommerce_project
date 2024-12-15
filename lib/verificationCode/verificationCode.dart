import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../bottomNavigationBar/navigationBar/navigation.dart';
import '../forgetPassword/forget.dart';
import '../register/register.dart';


class Verificationcode extends StatelessWidget {
  const Verificationcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
        },
      ),
    ),
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Text(
                "Enter Verification Code",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                "Enter code that we have sent to your  ",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
              ),
            ),Center(child: Text("number 08528188*** ",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),)),
            SizedBox(height: 50,),







            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60,),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                pinTheme: PinTheme(
                  activeColor: Color(0xffdd8560),
                  shape: PinCodeFieldShape.box,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(7),
                  fieldHeight: 50,
                  fieldWidth: 31,

                  activeFillColor: Colors.white,),
                cursorColor: Colors.black,

                enableActiveFill: false,
                keyboardType: TextInputType.number,
              ),
            ),








            SizedBox(height: 50,),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: FilledButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffdd8560)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Navigationbar(),));
                    },
                    child: Text(
                      "Verify",
                    ))),
            Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [Padding(padding: EdgeInsets.all(5)),
                Text("Didn’t receive the code? Resend",  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),

              ],)

          ],
        )
    );
  }
}
