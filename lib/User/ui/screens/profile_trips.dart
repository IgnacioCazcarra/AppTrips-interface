import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_buttons.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images_list.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_info.dart';
import 'package:flutteraaaaa/widgets/gradient_back.dart';


class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        GradientBack("",250.0),
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