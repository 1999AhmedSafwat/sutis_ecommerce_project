import 'package:flutter/material.dart';

import '../login/login.dart';
import '../register/register.dart';

class SliderPageView extends StatefulWidget {
  @override
  _SliderPageViewState createState() => _SliderPageViewState();
}

class _SliderPageViewState extends State<SliderPageView> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List<SliderModel> list = [];
  final int totalPages = 3;

  get position => null;

  @override
  void initState() {
    super.initState();

    list.add(SliderModel(
        "Welcome to Fashion",
        "Complete your profile to help you find a",
        "assets/images/1a0997a06bcaaf6827ccf6be31f127a4 1@2x.png"));
    list.add(SliderModel(
        "Explore & Shop",
        "Discover a wide range of fashion categories,",
        "assets/images/2fffe4590de01707efcaf816f73149fc 1.png"));
    list.add(SliderModel(
        "Hi Shop Now",
        "Talk to your Roommate, know each other",
        "assets/images/c29a3a81362e9b1bca7d766f3fbedbd7 1.png"));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [TextButton(onPressed: (){}, child: Text("Skip")),
            Expanded(
              child: PageView.builder(
                  itemCount: list.length,
                  onPageChanged: (position) {
                    setState(() {
                      _currentPage = position;
                    });
                  },
                  itemBuilder: (context, position) {
                    return Stack(
                      children: [
                        Center(
                            child: Image.asset(
                          list[position].image,
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          child: Text(
                            list[position].title,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w700, fontSize: 36),
                          ),
                          bottom: 142,left: 10,
                        ),
                        Positioned(
                          child: Text(
                            list[position].desc,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),bottom: 100,left: 10,
                        ),

                        SizedBox(height: 10,),
                        Positioned(child: IconButton(onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ));
                        }, icon:Icon(Icons.back_hand,color: Color(0xffdd8560)),),bottom: 10,right: 10,),
                        Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(3, (index) => buildIndicator(index)),
                          ),bottom: 41,left: 120,




                        ),
                      ],
                    );
                  }),
            ),
              ],
            ),

        );
  }
  Widget buildIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 10,
      width: _currentPage == index ? 10 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index ? Color(0xffdd8560) : Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

class SliderModel {
  String title;
  String desc;
  String image;

  // String Button;

  SliderModel(
    this.title,
    this.desc,
    this.image,
  );
}
