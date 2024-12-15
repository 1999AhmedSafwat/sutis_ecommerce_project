import 'package:flutter/material.dart';

import '../../details/details.dart';
import '../navigationBar/navigation.dart';

class ShopingView extends StatefulWidget {
  const ShopingView({super.key});

  @override
  State<ShopingView> createState() => _ShopingViewState();
}

class _ShopingViewState extends State<ShopingView> {
  bool _isTapped = false;
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
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
          },
            child: Container(height: 250,
              decoration: BoxDecoration(
               // color: Colors.yellow,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/person.png',
                      height:110,
                      width: double.infinity,
            fit: BoxFit.fill,
                    ),
                  ),
            Positioned(child: Text("classic blazar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),bottom: 30,),
                  SizedBox(height: 0,),
                  Positioned(child: Text("83.97",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),bottom: 5,),
                  Positioned(child: Container(height: 30,width: 30,decoration: BoxDecoration(color: Colors.white.withOpacity(0.5),borderRadius: BorderRadius.circular(20)),

                      child: GestureDetector(
                          onTap: () {
                      setState(() {
                      _isTapped = !_isTapped;
                      });
                      },   child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            _isTapped ? Colors.grey.withOpacity(0.5) : Colors.transparent,
                            BlendMode.srcATop,
                          ),
                          child: Image.asset("assets/images/lovecolor.png",color: Color(0xffdd8560),))),),right: 1,height: 29,
                 // Positioned(child: Image.asset("assets/images/notLove.png"),right: 3,top: 3,height: 40,),
                  )],
              ),
            ),
          );
        },
      ),
    )

    ],)
    );
  }
}
