import 'package:flutter/material.dart';

import '../bottomNavigationBar/navigationBar/navigation.dart';
import '../c.hekout/chekout.dart';
import '../details/details.dart';

class MyCardsView extends StatefulWidget {
  const MyCardsView({super.key});

  @override
  State<MyCardsView> createState() => _MyCardsViewState();
}

class _MyCardsViewState extends State<MyCardsView> {
 // List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("My Cards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.white12,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigationbar(),
                ));
          },
        ),),
      body:

      ListView(padding: EdgeInsets.all(0.9),
        children: [
          _Items(),
          _Items(),
          _Items(),
          _Items(),
          _Items(),
          _Items(),
          Container(
            height: 300,width: 360,decoration: BoxDecoration(color: Colors.grey[50],borderRadius: BorderRadius.only(
              topRight: Radius.circular(9),topLeft: Radius.circular(9)),
          ), child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Padding(padding: EdgeInsets.all(0.5)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child:
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Promo Code", border: InputBorder.none,
                      ),
                    ),
                  ),SizedBox(height: 14,),
                  Row(children: [Text("Sub-Total",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),Spacer(), Text("407.94")],),
                  SizedBox(height: 14,),
                  Row(children: [Text("Delivery Free",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),Spacer(), Text("25.00")],),
                  SizedBox(height: 14,),
                  Row(children: [Text("Discount",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),Spacer(), Text("407.94")],),
                  SizedBox(height: 14,),
                  Divider(),
                  Row(children: [Text("Total Cost",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),Spacer(), Text("397.94")],),
                  SizedBox(height: 14,),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChekoutView(),));
                  },
                    child: Container(width: double.infinity,height: 35,decoration: BoxDecoration(color: Color(0xffdd8560),
                        borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text("Proceed to Checkout",style: TextStyle(color: Color(0xFFFFFFFF)),)),),
                  )

                ],
              )
          ),



          ),
        ],),




     );
  }
}

//       ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           final item = items[index];
//
//           return Dismissible(
//             key: Key(item),
//             background: Container(
//               color: Colors.green,
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.only(left: 20),
//               child: Icon(Icons.check, color: Colors.white),
//             ),
//             secondaryBackground: Container(
//               color: Colors.red,
//               alignment: Alignment.centerRight,
//               padding: EdgeInsets.only(right: 20),
//               child: Icon(Icons.delete, color: Colors.white),
//             ),
//             onDismissed: (direction) {
//               setState(() {
//                 items.removeAt(index);
//               });
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text(direction == DismissDirection.startToEnd
//                       ? "$item Saved"
//                       : "$item Deleted"),
//                 ),
//               );
//             },
//             child: _Items(item: item),
//           );
//
//         },
//       ),
// floatingActionButton: Expanded(child: Container(width: double.infinity,height: 200,decoration: BoxDecoration(color: Colors.yellow),)),
//
























class _Items extends StatefulWidget {
  //final String item;  // إضافة خاصية item لتخزين النص

//  const _Items({super.key, required this.item});

  @override
  State<_Items> createState() => _ItemsState();
}

class _ItemsState extends State<_Items> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white12,
      ),
      child: Row(
        children: [
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
          },
              child: Image.asset("assets/images/2fffe4590de01707efcaf816f73149fc 1.png")),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Classic Blazar", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
              SizedBox(height: 22),
              Text("Size: xl", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
              SizedBox(height: 22),
              Text("83.97", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text("+", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30)),
              ),
            ),
          ),
          SizedBox(width: 8),
          Text(
            '$counter',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8),
          InkWell(
            onTap: () {
              if (counter >= 1) {
                setState(() {
                  counter--;
                });
              }
            },
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Color(0xffdd8560),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text("-", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


































































//
// Container(
// height: 143,width: 330,decoration: BoxDecoration(
// color: Colors.grey,
// ),
// child: Row(children: [
// Image.asset("assets/images/2fffe4590de01707efcaf816f73149fc 1.png"),
// SizedBox(width: 20,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Classic Blazar",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
// SizedBox(height: 22,),
// Text("Size:xl",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
// SizedBox(height: 22,),
// Text("83.97",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
//
//
//
// ],),
//
//
// InkWell(onTap: () {
// setState(() {counter++;});
// },
// child: Container(height: 25,width: 25,decoration: BoxDecoration(color: Colors.white,
// borderRadius: BorderRadius.circular(5)
// ),
// child: Center(child: Text("+",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30),)),),
// ),
// SizedBox(width: 8,),
// Text(
// '$counter',
// style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
// ),
// SizedBox(width: 8,),
// InkWell(onTap: () {if (counter >= 1) {
// counter--;
// setState(() {});
// }
//
// },
// child: Container(height: 25,width: 25,decoration: BoxDecoration(color: Color(0xffdd8560),
// borderRadius: BorderRadius.circular(5)
// ),
// child: Center(child: Text("-",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),)),
// ),
//
//
//
//
//
//
//
//
//
//
// )],
// ),
// ),