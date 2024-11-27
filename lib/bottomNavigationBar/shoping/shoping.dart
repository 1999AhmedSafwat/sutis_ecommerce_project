import 'package:flutter/material.dart';

import '../navigationBar/navigation.dart';

class ShopingView extends StatefulWidget {
  const ShopingView({super.key});

  @override
  State<ShopingView> createState() => _ShopingViewState();
}

class _ShopingViewState extends State<ShopingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(centerTitle: true,
        title: Text("My Wishlist",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp
            ,),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigationbar(),
                ));
          },
        ),
      ),







      body:ListView(children: [

        Padding(
          padding: const EdgeInsets.all(10),
          child: Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              // to disable GridView's scrolling
              shrinkWrap: true,
              // You won't see infinite size error
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 22,
                  mainAxisSpacing: 28),
              itemCount: 8,
              itemBuilder: (context, index) {
                // final product = allProduct[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    // color: Colors.grey.shade400,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/person.png',
                              height: 149,
                              width: 220,
                              fit: BoxFit.cover,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],)
    );
  }
}
