import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  void initState(){
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(1),
            child: Icon(
              Icons.notifications,size: 20,
            ),
          ),
Container(width: 40,height: 40,
decoration: BoxDecoration(color: Color(0xFFFFFFFF).withOpacity(1),borderRadius: BorderRadius.circular(30),
    image: DecorationImage(
    image: AssetImage("assets/images/bell (1) 1.png"),
),)
)  ],
        title: Text("Hello Safia",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),

        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsetsDirectional.all(0),
                children: [

                  Container(height: 140,width: 330,decoration: BoxDecoration(color: Colors.grey, 
                     ),child: Image.asset("assets/images/Choosing clothes.pngs"),),
                  SizedBox(
                    height: 28,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Categary",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    Text("See All",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  ],),


                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Expanded(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        // to disable GridView's scrolling
                        shrinkWrap: true,
                        // You won't see infinite size error
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 3),
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          // final product = allProduct[index];
                          return SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  16.0,
                                ),
                                color: Colors.grey.shade400,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/Choosing clothes.png',
                                          height: 120,
                                          width: 250,
                                          fit: BoxFit.cover,
                                        ),
                                        Text("product.title"),
                                        // Row(
                                        //   children: [
                                        //     Expanded(child: Text("e")),
                                        //
                                        //
                                        //    // Text("add"),
                                        //   ],
                                        // )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

