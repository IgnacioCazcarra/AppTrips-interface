import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget{

  String imagePath;
  String profileName;
  String profileEmail;

  ProfileInfo(this.imagePath,this.profileName,this.profileEmail);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final image = Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(
        top: 20,
        left: 30,
        bottom: 25
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 1.5),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imagePath
          )
        )
      ),
    );

    final name = Container(
      margin: EdgeInsets.only(
        top: 35,
        left: 24,
      ),
      child: Text(
        profileName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontFamily: "Roboto"
        ),
      ),
    );

    final email = Container(
      margin: EdgeInsets.only(
        top: 5,
      ),
      child: Text(
        profileEmail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.w400,
            color: Colors.white70,
            fontFamily: "Roboto"
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        image,
        Column(
          children: <Widget>[
            name,
            email
          ],
        ),
      ],
    );

  }

}