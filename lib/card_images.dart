import 'package:flutter/material.dart';
import 'package:flutteraaaaa/fav_button.dart';

class CardImage extends StatelessWidget{

  String path_image;

  CardImage(this.path_image);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      width: 300.0,
      height: 250.0,
      margin: EdgeInsets.only(
        top: 70.0,
        left: 32.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
          path_image
          ),
        ),
        borderRadius: BorderRadius.all(Radius.circular(13.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              offset: Offset(0.0,7.0)
          )
          ],
      ),
    );
    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        FavButton()
      ],
    );
  }

}
