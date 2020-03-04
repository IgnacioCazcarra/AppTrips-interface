import 'package:flutter/material.dart';
import 'package:flutteraaaaa/profile_images.dart';

class ProfileimagesList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
        ),
      child: Column(
        children: <Widget>[
          ProfileImages("assets/images/japan1.jpg","Tokyo" ,"Lorem ipsum"),
          ProfileImages("assets/images/japan2.jpg","Japan", "Lorem ipsum"),
          ProfileImages("assets/images/japan3.jpg","Shibuya" ,"Lorem ipsum"),
          ProfileImages("assets/images/japan4.jpg","Ueno" ,"Lorem ipsum"),
        ],
      )
    );
  }

}