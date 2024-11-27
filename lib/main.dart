import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/splash/splash.dart';
import 'package:project/traning/traning.dart';
import 'addCard/addCard.dart';
import 'bottomNavigationBar/home/home.dart';
import 'bottomNavigationBar/navigationBar/navigation.dart';
import 'bottomNavigationBar/profile/Payment Methods/PaymentMethods.dart';
import 'bottomNavigationBar/shoping/shoping.dart';
import 'confirmationMessage/payment/paymentSuceess.dart';
import 'notifications/notifications.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView  (),
    );
  }
}





