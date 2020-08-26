// Package
import 'package:ahmadjoghaimiflutterdeveloper/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Const
import '../Constant/color.dart';
import '../Constant/string.dart';

// Component
import '../component/FloatngShareButton.dart';

// Theme
import '../theme/AppTheme.dart';

class ImagePage extends StatefulWidget {
  static String id = 'ImagePage';
  static String ImageURL;
  static String Name;
  static int Like_Num;


  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.network(
                          ImagePage.ImageURL,
                          fit: BoxFit.fill,
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  child: Icon(
                                    Icons.clear,
                                    color: C_WhiteColor,
                                    size: 30,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                ),
                                Text(
                                  ImagePage.Name,
                                  style: AppTheme.SmallWhiteTitel,)
                              ],
                            )),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            child: Text(
                              ImagePage.Name,
                              style: AppTheme.MedBlackTitel,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            color: C_RED,
                          ),
                        ),
                        Text(
                          ImagePage.Like_Num.toString(),
                        ),
                        Expanded(
                          child: Text(''),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: FaIcon(
                            FontAwesomeIcons.shareAlt,
                            color: C_PURPLE,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                          K_RandomText,
                          style: AppTheme.Text
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.all(15),
          child: FloatngShareButton(),
        ),
      ),
    );
  }
}
