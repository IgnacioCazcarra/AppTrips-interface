import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/model/place.dart';


class User{

  final String uid;
  final String imagePath;
  final String name;
  final String email;
  final List<Place> savedPlaces;
  final List<Place> myPlaces;

  User({
    Key key,
    @required this.uid,
    @required this.imagePath,
    @required this.name,
    @required this.email,
    this.myPlaces,
    this.savedPlaces,
  });
}