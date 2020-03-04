import 'package:flutter/material.dart';
import 'package:flutteraaaaa/widgets/fav_button.dart';

class ProfileImages extends StatelessWidget{

  String path_image;
  String name;
  String description;
  String steps;
  ProfileImages(this.path_image,this.name,this.description,this.steps);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final imageName = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0
      ),
      child: Text(
        name,
        style: TextStyle(
            fontSize: 12.0,
            fontFamily: "Spartan",
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );

    final imageDescription = Container(
      margin: EdgeInsets.only(
        left: 8.0,
        right: 8.0
      ),
      child: Text(
        description,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 7.0,
            fontFamily: "Spartan",
            fontWeight: FontWeight.w500,
            color: Colors.grey
        ),
      ),
    );

    final imageSteps = Container(
      margin: EdgeInsets.only(
          left: 3.0,
          right: 8.0,
          top: 10.0
      ),
      child: Text(
        steps,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 10.0,
            fontFamily: "Spartan",
            fontWeight: FontWeight.w500,
            color: Colors.orange
        ),
      ),
    );



    final imageReview = Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              imageName,
              imageDescription,
              imageSteps
            ],
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
        imageReview,
        Container(
          alignment: Alignment(0.8, 1.25),
          child: FavButton()
        ),
      ],
    );
  }

}