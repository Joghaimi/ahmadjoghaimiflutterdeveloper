// packages
import 'package:flutter/material.dart';

// Constant
import '../Constant/color.dart';

//Themes
import 'size_config.dart';


class AppTheme{
  static final TextStyle CardImageText = TextStyle(
    color: C_WhiteColor,
    backgroundColor: Colors.grey,
    fontSize: 3.5 * SizeConfig.textMultiplier,
    height: 0.15 * SizeConfig.heightMultiplier,
  );
  static final TextStyle SplashTitel = TextStyle(
    color: C_WhiteColor,
    fontSize: 12 * SizeConfig.textMultiplier,
    height: 0.3 * SizeConfig.heightMultiplier,
  );
  static final TextStyle SmallWhiteTitel = TextStyle(
    color: C_WhiteColor,
    fontSize: 3 * SizeConfig.textMultiplier,
    height: 0.3 * SizeConfig.heightMultiplier,
  );
  static final TextStyle MedBlackTitel = TextStyle(
    color: C_BlackColor,
    fontSize: 4 * SizeConfig.textMultiplier,
    height: 0.3 * SizeConfig.heightMultiplier,
  );
  static final TextStyle Text = TextStyle(
    color: C_BlackColor,
    fontSize: 2.5 * SizeConfig.textMultiplier,
    height: 0.3 * SizeConfig.heightMultiplier,
  );

}