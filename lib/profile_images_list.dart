import 'package:flutter/material.dart';
import 'package:flutteraaaaa/profile_images.dart';

class ProfileimagesList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      width: 400.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          ProfileImages("assets/images/japan1.jpg","Tokyo" ,"Lorem ipsum"),
          ProfileImages("assets/images/japan2.jpg","Tokyo", "Lorem ipsum"),
          ProfileImages("assets/images/japan3.jpg","Shibuya" ,"Lorem ipsum"),
          ProfileImages("assets/images/japan4.jpg","Ueno" ,"Lorem ipsum"),
        ],
      ),
    );
  }

}