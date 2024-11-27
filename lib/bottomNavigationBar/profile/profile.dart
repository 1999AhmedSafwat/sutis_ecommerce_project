import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import '../../notifications/notifications.dart';
import '../home/home.dart';
import '../navigationBar/navigation.dart';
import 'Payment Methods/PaymentMethods.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigationbar(),
                ));
          },
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Center(
              child: Container(
            width: 100,
            height: 100,
                decoration: BoxDecoration(color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvi7HpQ-_PMSMOFrj1hwjp6LDcI-jm3Ro0Xw&s',
                  fit: BoxFit.cover,
                ),
          )),
          SizedBox(
            height: 40,
          ),
          ExpansionTile(
            leading: Image.asset("assets/images/per.png"),
            title: Text('my Profile',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),

          ),
          ExpansionTile(
            leading: Image.asset("assets/images/menu 1.png"),
            title: Text('My Order',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),

          ),







          ExpansionTile(
            leading: Image.asset("assets/images/menu 1.png"),
            title: Text('Payment Methods',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
            children: [
              ListTile(
                title: Text('Payment Methods'),
                onTap: () {
Navigator.push(context, MaterialPageRoute(builder:(context) => PaymentMethods(),));
                },
              ),
            ],

          ),
          ExpansionTile(
            leading: Image.asset("assets/images/bell (1) 1.png"),
            title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
            children: [
              ListTile(
                title: Text('Email Notifications'),
                onTap: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationsView(),
                      ));
                },
              ),

            ],
          ),
          ExpansionTile(
            leading: Image.asset("assets/images/heart.png"),
            title: Text('Wishlist',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
            children: [
              ListTile(
                title: Text('Email Notifications'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Push Notifications'),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            leading:Image.asset("assets/images/setting 1.png"),
            title: Text('Setting',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
            children: [
              ListTile(
                title: Text('Email Notifications'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Push Notifications'),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            leading:Image.asset("assets/images/logout .png"),
            title: Text('Log Out',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
            children: [
              ListTile(
                title: Text('Exit',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                    ,fontSize:20),),
                onTap: () {

                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }



                },
              ),
            ],
          ),
        ],
      )),
    );
  }
}
