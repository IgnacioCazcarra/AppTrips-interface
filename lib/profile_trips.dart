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
        GradientBack(""),
        ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Text(
              "Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25.0
              ),
            ),
            ProfileInfo("assets/images/traveler.jpg", "William the traveler", "william@email.com"),
            ProfileButtons(),
            ProfileimagesList()
          ],
        ),
      ],
    );
  }

}