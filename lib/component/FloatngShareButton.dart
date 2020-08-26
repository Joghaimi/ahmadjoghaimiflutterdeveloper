// PAckeges
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Constant
import '../Constant/color.dart';
class FloatngShareButton extends StatelessWidget {
  const FloatngShareButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: C_RED ,
      onPressed: () {},
      child: FaIcon(
        FontAwesomeIcons.phone,
        color: C_WhiteColor,
      ),

    );
  }
}
