import 'package:flutter/material.dart';
import 'package:flutteraaaaa/card_image_list.dart';
import 'package:flutteraaaaa/card_image_list.dart';
import 'package:flutteraaaaa/gradient_back.dart';

class HeaderAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Popular this week"),
        CardList(),
      ],
    );
  }

}