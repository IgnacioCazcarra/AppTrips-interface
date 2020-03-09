import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutteraaaaa/widgets/floating_action_button.dart';

class CardImage extends StatelessWidget{

  final String image_path;
  final double height;
  final double width;
  final IconData icon;
  final VoidCallback onPressedFABIcon;
  bool internet = true;

  CardImage({Key key, @required this.image_path, @required this.height, @required this.width, @required this.icon, @required this.onPressedFABIcon,this.internet});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(
        top: 70.0,
        right: 10,
        left: 10
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: internet?CachedNetworkImageProvider(image_path):AssetImage(image_path),
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
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        Fab(icon: Icons.favorite,onPressedFAB: (){})
      ],
    );
  }

}
