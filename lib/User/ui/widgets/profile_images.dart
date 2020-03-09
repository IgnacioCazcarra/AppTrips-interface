import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/widgets/floating_action_button.dart';

class ProfileImages extends StatelessWidget{

  Place place;
  bool internet = true;
  ProfileImages(this.place,this.internet);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final imageName = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0
      ),
      child: Text(
        place.name,
        style: TextStyle(
            fontSize: 13.0,
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
        place.description,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 10.0,
            fontFamily: "Spartan",
            fontWeight: FontWeight.w500,
            color: Colors.grey
        ),
      ),
    );

    final imageLikes = Container(
      margin: EdgeInsets.only(
          left: 3.0,
          right: 8.0,
          top: 15.0
      ),
      child: Text(
        "Likes: ${place.likes}",
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 14.0,
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
              imageLikes
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
          image: internet?CachedNetworkImageProvider(place.imagePath):AssetImage(place.imagePath),
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
          alignment: Alignment(0.5, 1.25),
          child: Fab(icon: Icons.favorite,onPressedFAB: (){},)
        ),
      ],
    );
  }

}