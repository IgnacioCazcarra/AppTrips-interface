import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/ui/screens/profile_header.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_buttons.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images_list.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_info.dart';
import 'package:flutteraaaaa/User/ui/widgets/title_header.dart';
import 'package:flutteraaaaa/widgets/gradient_back.dart';


class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        GradientBack(height: 250.0),
        ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            TitleHeader(title: "Profile"),
            ProfileHeader(),
            ProfileButtons(),
            ProfileimagesList()
          ],
        ),
      ],
    );
  }

}