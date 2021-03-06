// Package
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

// Const
import '../Constant/color.dart';
import '../Constant/string.dart';


//Themes
import '../theme/AppTheme.dart';
import '../theme/size_config.dart';

// Function
import '../Function/GetImage.dart';

// Screen
import 'home.dart';

class splash_screen extends StatefulWidget {
  static final id = 'splash_screen';

  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    OpenNewView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return Container(
          child: Scaffold(
            body: Container(
              color: C_PURPLE,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Text(""),
                    ),
                    Expanded(
                      flex: 9,
                      child: Column(
                        children: <Widget>[
                          LoadingDoubleFlipping.square(
                            borderColor: C_WhiteColor,
                            backgroundColor: C_WhiteColor,
                            borderSize: 3.0* SizeConfig.textMultiplier,
                            size: 16 * SizeConfig.textMultiplier,
                          ),
                          Text(
                            K_AppName,
                            style: AppTheme.SplashTitel,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
    });
  }

  Future<dynamic> OpenNewView() async {

    GetAlotOfImage();
    return Future.delayed(const Duration(milliseconds: 6000), () {
      setState(() {
        Navigator.pushReplacementNamed(context, home.id);
      });
    });
  }
}
