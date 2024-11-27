import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Center(child: Text("Notificatios")),),
      body: ListView(padding: EdgeInsets.all(10),

        children: [
        _Item(),
        _Item(),
        _Item(),
        _Item(),
        _Item(),
        _Item(),
        _Item(),
        _Item(),
      ],)
    );
  }
}

class _Item extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10),
      child: Container(padding: EdgeInsets.all(10),
        height: 100,width: double.infinity,decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Color(0xffdd8560),
            width: 1,
          ),),child: Column(children: [
          Row(children: [
            Text("تم تاكيد عمليه الايجاع "),
            SizedBox(width: 20,),
            Text("2/2/2024"),
          ],),
          Text("تم تاكيد عمليه الايداع اللزي قمت بها واصبح الرصيد في حسابك مبلغ دولار200"),

        ],),),
    );
  }
}
