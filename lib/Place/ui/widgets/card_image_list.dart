import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/ui/widgets/card_images.dart';


class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      child: ListView(
        addAutomaticKeepAlives: false,
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(25.0),
        children: <Widget>[
          CardImage(image_path: "assets/images/sri1.jpg", height: 250.0,width: 300.0, icon: Icons.favorite , onPressedFABIcon: (){}),
          CardImage(image_path: "assets/images/sri2.jpg",height: 250.0,width: 300.0, icon: Icons.favorite , onPressedFABIcon: (){}),
          CardImage(image_path: "assets/images/sri3.jpg",height: 250.0,width: 300.0, icon: Icons.favorite , onPressedFABIcon: (){}),
          CardImage(image_path: "assets/images/sri4.jpg",height: 250.0,width: 300.0, icon: Icons.favorite , onPressedFABIcon: (){}),
          CardImage(image_path: "assets/images/sri5.jpg",height: 250.0,width: 300.0, icon: Icons.favorite , onPressedFABIcon: (){})
        ],
      ),
    );
  }

}