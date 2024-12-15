import 'package:flutter/material.dart';
import '../bottomNavigationBar/profile/profile.dart';

class sssss extends StatefulWidget {
  const sssss({super.key});

  @override
  State<sssss> createState() => _sssssState();
}

class _sssssState extends State<sssss> {
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
            },
            child: Container(
              height: 20,
              width: 20,
              child: Text("B"),
            ),
          )
        ],
        title: Text("Dismissible Example"),
      ),
      body: ListView.builder(

        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item), // مفتاح فريد لكل عنصر
            background: Container(
              color: Colors.green, // الخلفية عند التمرير لليسار
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.check, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.red, // الخلفية عند التمرير لليمين
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index); // إزالة العنصر من القائمة
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(direction == DismissDirection.startToEnd
                      ? "$item Saved"
                      : "$item Deleted"),
                ),
              );
            },
            child: _Items(item: item),  // تم تمرير item لداخل الكلاس _Items
          );
        },
      ),
    );
  }
}

class _Items extends StatefulWidget {
  final String item;  // إضافة خاصية item لتخزين النص

  const _Items({super.key, required this.item});

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
          Image.asset("assets/images/2fffe4590de01707efcaf816f73149fc 1.png"),
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
