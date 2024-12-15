import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../login/login.dart';
import '../../notifications/notifications.dart';
import '../shoping/shoping.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(1),
          ),
          GestureDetector(onTap: () {
          },
            child: GestureDetector(onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsView(),
                  ));
            },
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF).withOpacity(1),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assets/images/bell (1) 1.png"),
                    ),
                  )),
            ),
          )
        ],
        title: Text(
          "Hello Safia",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsetsDirectional.all(0),
                children: [
                  Container(
                    height: 137,
                    width: 330,
                    color: Color(0xFFFFFFFF),
                    padding: EdgeInsets.all(3),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(20)),
                        Column(
                          children: [
                            Text(
                              "New Collection",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Disscount 50% for",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "-the first transaction",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            FilledButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffdd8560)),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView()));},
                              child: Text(
                                "Shop Now",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 48,
                        ),
                        Image.asset("assets/images/Choosing clothes.png")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categary",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ],
                  ),










                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView(),));} ,
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xffdd8560),
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/1.png'),
                                    ),
                                  ),
                                ),SizedBox(height: 5,),Text("Blazar",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12))
                              ],
                            ),
                          ),
                        ),





                        SizedBox(
                          width: 20,
                        ),



                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView(),));},
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xffdd8560),
                                      width: 1,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/2.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),Text("Shirt",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),



                        GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView(),));},
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffdd8560),
                                    width: 1,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/3.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),Text("Men Shoes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)

                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),



                        GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView(),));},
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffdd8560),
                                    width: 1,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/4.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),Text("Women Shoes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)

                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),




                        GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView(),));},
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xffdd8560),
                                    width: 1,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/5.png'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),Text("dress",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),)

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),





                  SizedBox(
                    height: 30,
                  ),

                  Text(
                    "Flash Sale",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 60,
                          height:30 ,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),child: Center(child: Text("All",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 90,
                          height:30 ,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),child: Center(child: Text("Newest",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 60,
                          height:30 ,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),child: Center(child: Text("Popular",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 60,
                          height:30 ,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),child: Center(child: Text("Men",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 60,
                          height:30 ,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),child: Center(child: Text("Women",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
                        ),

                      ],
                    ),
                  ),





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
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          // final product = allProduct[index];
                          return Container(
                            decoration: BoxDecoration(
                              //color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                10  ,
                              ),
                             // color: Colors.grey.shade400,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.9),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ShopingView(),));},
                                        child: Image.asset(
                                          'assets/images/person.png',
                                          height: 149,
                                          width: 220,
                                          //fit: BoxFit.cover,
                                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
