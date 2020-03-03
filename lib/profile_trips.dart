import 'package:flutter/material.dart';
import 'package:flutteraaaaa/gradient_back.dart';
import 'package:flutteraaaaa/profile_buttons.dart';
import 'package:flutteraaaaa/profile_images_list.dart';
import 'package:flutteraaaaa/profile_info.dart';
class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        GradientBack("Profile"),
        Column(
          children: <Widget>[
            ProfileInfo("assets/images/traveler.jpg", "William the traveler", "william@email.com"),
            ProfileButtons(),
            ProfileimagesList()
          ],
        )
      ],
    );
  }

}