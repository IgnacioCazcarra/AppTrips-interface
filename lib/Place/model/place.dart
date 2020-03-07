import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/model/user.dart';

class Place{

  String uid;
  String name;
  int likes;
  String description;
  String imagePath;
  User userOwner;

  Place({
    Key key,
    @required this.imagePath,
    @required this.userOwner,
    @required this.name,
    @required this.description,
    this.likes
  });


}