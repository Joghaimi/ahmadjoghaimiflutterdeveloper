// package
import 'package:flutter/material.dart';

// Theme
import '../theme/AppTheme.dart';
import '../theme/size_config.dart';

class ImageView extends StatefulWidget {
  const ImageView(this.image, this.photographer,this.RandomNumb);

  final image;
  final photographer;
  final RandomNumb;

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.network(
          widget.image,
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
      Padding(
        padding:  EdgeInsets.fromLTRB(4*SizeConfig.widthMultiplier,1*SizeConfig.heightMultiplier,0,0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.fromLTRB(2*SizeConfig.widthMultiplier,1*SizeConfig.heightMultiplier,0,0),
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.photographer,
                    style: AppTheme.CardImageText,
                  )),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier*22,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                widget.RandomNumb.toString(),
                style: AppTheme.CardImageText,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
