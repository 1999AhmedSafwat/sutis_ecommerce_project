import 'package:flutter/material.dart';

import '../../../addCard/addCard.dart';
import '../../../login/login.dart';
import '../../../register/register.dart';
import '../profile.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  Color _containerColor = Colors.white;
  Color _COLOR = Colors.white;
  Color _CONTAINARCOLOR = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment Methods",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(16)),
            Text(
              "Credit & Debit Card",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Addcard(),
                    ));
              },
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Image.asset(
                      "assets/images/menu 1.png",
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add Card",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "More Payment Options",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/paypal 1.png"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Paypal",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        GestureDetector(onTap: () {

                          setState(() {
                            _COLOR = _COLOR == Colors.white
                                ? Colors.blue
                                : Colors.white;
                          });
                        },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color:_COLOR,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/apple-logo 5.png"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Apple Pay",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        GestureDetector(onTap: () {
                          setState(() {
                            _containerColor = _containerColor == Colors.white
                                ? Colors.blue
                                : Colors.white;
                          });
                        },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: _containerColor,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/google3.png"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Paypal",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        GestureDetector(onTap: () {
                          setState(() {
                            _CONTAINARCOLOR = _CONTAINARCOLOR == Colors.white
                                ? Colors.blue
                                : Colors.white;
                          });
                        },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: _CONTAINARCOLOR,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Addcard(),));} ,
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffdd8560),
                    borderRadius: BorderRadius.circular(10),
                  ),child: Center(child: Text("Confirm Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color:Color(0xFFFFFFFF))),)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
