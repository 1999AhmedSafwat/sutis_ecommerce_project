import 'package:flutter/material.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  bool isVisible = false;
  bool isBodyVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Center(child: Text("Notificatios")),),
      body: ListView(padding: EdgeInsets.all(10),

        children: [
          // Switch(
          //   value: isBodyVisible,
          //   onChanged: (value) {
          //     setState(() {
          //       isBodyVisible = value;
          //     });
          //   },
          // ),
          // Body
          if (isBodyVisible)
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
