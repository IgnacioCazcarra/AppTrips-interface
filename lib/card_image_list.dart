import 'package:flutter/material.dart';
import 'package:flutteraaaaa/card_image.dart';


class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 280.0,
      child: ListView(
        addAutomaticKeepAlives: false,
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(25.0),
        children: <Widget>[
          CardImage("assets/images/sri1.jpg"),
          CardImage("assets/images/sri2.jpg"),
          CardImage("assets/images/sri3.jpg"),
          CardImage("assets/images/sri4.jpg"),
          CardImage("assets/images/sri5.jpg")
        ],
      ),
    );
  }

}