import 'package:flutter/material.dart';
import 'package:flutteraaaaa/widgets/purple_button.dart';

class Description_place extends StatelessWidget {

  String place_name;
  int stars_number;
  String description_text;

  Description_place(this.place_name,this.stars_number,this.description_text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final description = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 25.0,
          right: 25.0,
          bottom: 20.0
      ),
      child: (
      Text(
          description_text,
          textAlign: TextAlign.justify, style: TextStyle(
          fontSize: 15.0,
          color: Color(0xFF56575a),
          fontFamily: "Roboto")
      )
      ),
    );
    final starsHalf = Container(
      margin: EdgeInsets.only(
          top: 300.0,
          left: 3.0,
          right: 2.0
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.grey,
      ),
    );

    final starsBorder = Container(
      margin: EdgeInsets.only(
          top: 300.0,
          left: 3.0,
          right: 2.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final stars = Container(
      margin: EdgeInsets.only(
          top: 300.0,
          left: 3.0,
          right: 2.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final nameTitle = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 300.0,
            left: 25.0,
            right: 20.0
          ),
          child: Text(
            place_name,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              fontFamily: "Roboto",
            ),
          ),
        ),
        Row(
          children: <Widget>[
            for(var i = 0; i<stars_number;i+=1) stars,
            for(var i = 0; i<5-stars_number;i+=1) starsBorder
    ],
    ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nameTitle,
        description,
        PurpleButton(text: "Navigate", onPressed: (){}),
      ],
    );
  }
}