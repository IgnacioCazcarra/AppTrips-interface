import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images.dart';

class ProfileimagesList extends StatelessWidget{

  Place place = Place(
      name: "Knuckles Mountains Range",
      description: "Hiking. Water fall hunting. Natural bath",
      imagePath: "https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      likes: 3,
      steps: "123,123,123"

  );
  Place place2 = Place(
      name: "Mountains",
      description: "Hiking. Water fall hunting. Natural bath', 'Scenery & Photography",
      imagePath: "https://images.unsplash.com/photo-1524654458049-e36be0721fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      likes: 10,
      steps: "123,123,123"
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 50.0
        ),
      child: Column(
        children: <Widget>[
          ProfileImages(place2),
          ProfileImages(place),
          ProfileImages(place2),
          ProfileImages(place),
          ProfileImages(place2),
          ProfileImages(place),
        ],
      )
    );
  }

}