import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String imagePath;
  String name;
  String description;
  String details;

  Review(this.imagePath,this.name,this.details,this.description);


  Widget build(BuildContext context) {
    // TODO: implement build


    final userName = Container(
        margin: EdgeInsets.only(
          left: 16.0,
        ),
        child: (
        Text(
        name,
        textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            fontSize: 13.0,
          ),
        )
        ),
      );


    final userDetails = Container(
      margin: EdgeInsets.only(
        left: 16.0,
        bottom: 2.0,
        top: 2.0
      ),
      child: (
          Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w300,
                fontSize: 8.0
            ),
          )
      ),
    );


    final userDescription = Container(
      margin: EdgeInsets.only(
        left: 16.0,
        right: 15.0,
      ),
      child: (
          Text(
            description,
            textAlign: TextAlign.justify  ,
            style: TextStyle(
                color: Colors.black54,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
                fontSize: 10.0

            ),

          )
      ),
    );


    final userInfo = Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
            userDetails,
            userDescription
          ],
        )
    );


    final photo = Container(
      height: 50.0,
      width: 50.0,
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 12.0
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        )
      ),
    );


    return Row(
      children: <Widget>[
        photo,
        userInfo
      ],
    );

  }
}

