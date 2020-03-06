import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/model/user.dart';

class ProfileInfo extends StatelessWidget{

  User user;

  ProfileInfo(@required this.user);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

     final image = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 40
      ),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 1.5),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(user.imagePath)
        )
      ),
    );

    final name = Container(
      margin: EdgeInsets.only(
          top: 30,
          right: 20
      ),
      child: Text(
        user.name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontFamily: "Spartan"
        ),
      ),
    );

    final email = Container(
      margin: EdgeInsets.only(
        top: 5,
        left: 40
      ),
      child: Text(
        user.email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Colors.white70,
            fontFamily: "Spartan"
        ),
      ),
    );

    return Container(
      child: Row(
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
      ),
    );

    }



}