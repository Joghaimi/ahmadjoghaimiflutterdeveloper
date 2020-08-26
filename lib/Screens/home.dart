// Packages
import 'package:flutter/material.dart';
// Costant
import '../Constant/color.dart';
import '../Constant/string.dart';

// Screen
import 'ImagePage.dart';

// Function
import '../Function/RandomNum.dart';
import '../Function/GetImage.dart';

// Component
import '../component/image.dart';

class home extends StatefulWidget {
  static String id = 'home';
  static List<dynamic> Images = new List();
  static List<dynamic> photographers = new List();

  @override
  _homeState createState() => _homeState();
}
// TODO
//  - Create Image Page
//  - Make List in Home Static
//  - Create Splash Screen
//  - Make IT Responosive

class _homeState extends State<home> {

  ScrollController _Scroll = new ScrollController();

  @override
  void initState() {
    setState(() {
      GetAlotOfImage();
      _Scroll.addListener(() async {
        if (_Scroll.position.pixels == _Scroll.position.maxScrollExtent) {
          for (int i = 0; i < 5; i++) {
            setState(() {
              GetImage();
            });
          }
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: C_PURPLE,
          title: Text(K_HOME),
        ),
        body: ListView.builder(
          controller: _Scroll,
          itemCount: home.Images.length,
          itemBuilder: (buildContext, int index) {
            var RandomNumb = RandomNum();
            return Container(
              child: GestureDetector(
                  child: ImageView(home.Images[index], home.photographers[index],RandomNumb),
                  onTap:(){
                    ImagePage.Name = home.photographers[index];
                    ImagePage.ImageURL = home.Images[index];
                    ImagePage.Like_Num =RandomNumb;
                    Navigator.pushNamed(
                        context, ImagePage.id);
                  } ,
              ),
            );
          },
        ),
      ),
    );
  }

}
