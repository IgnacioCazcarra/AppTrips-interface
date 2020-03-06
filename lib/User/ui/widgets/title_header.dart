import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget{

  final String title;

  TitleHeader({Key key, @required this.title});

  @override
  Widget build(BuildContext context) {

    double fullScreenHeight = MediaQuery.of(context).size.height;
    double fullScreenWidth = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Text(
          title,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontFamily: "Spartan",
            fontWeight: FontWeight.bold
          ),
        );
  }

}