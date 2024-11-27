import 'package:flutter/material.dart';

class GridWithIconsAndText extends StatefulWidget {
  @override
  _GridWithIconsAndTextState createState() => _GridWithIconsAndTextState();
}

class _GridWithIconsAndTextState extends State<GridWithIconsAndText> {
  List<bool> iconStates = List.generate(8, (index) => false); // حالة الأيقونات

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 22,
            mainAxisSpacing: 28,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade400,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(
                        'assets/images/person.png',
                        height: 149,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: iconStates[index] ? Colors.red : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            iconStates[index] = !iconStates[index];
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Image $index',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

