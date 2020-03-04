import 'package:flutter/material.dart';
import 'package:flutteraaaaa/fav_button.dart';

class ProfileImages extends StatelessWidget{

  String path_image;
  String name;
  String profileDescription;

  ProfileImages(this.path_image,this.name,this.profileDescription);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description = Container(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          width: 200,
          height: 85,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(13.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15.0,
                  offset: Offset(0.0,1.3)
              )
            ],
          ),
          child: (
              Text(
                  name,
                  textAlign: TextAlign.center, style: TextStyle(
                  height: 2.5,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "Roboto")
              )
          ),
        ),
      ),
    );

    final image = Container(
      width: 330.0,
      height: 170.0,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 50.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              path_image
          ),
        ),
        borderRadius: BorderRadius.all(Radius.circular(13.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              offset: Offset(0.0,7.0)
          )
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0,1.5),
      children: <Widget>[
        image,
        description,
        Container(
          alignment: Alignment(0.8, 1.25),
          child: FavButton()
        ),
      ],
    );
  }

}