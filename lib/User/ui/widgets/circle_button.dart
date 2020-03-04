import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget{

  double iconSize;
  String description;
  IconData icon;
  Color circleColor;
  bool mini;
  CircleButton(this.icon,this.circleColor,this.iconSize, this.description,this.mini);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(description),
              )
          );
        },
        child: Container(
            margin: EdgeInsets.only(
              left: 10.0,
              right: 10.0
        ),
          child: FloatingActionButton(
               mini: mini,
               backgroundColor: circleColor,
               child: Icon(icon,color: Colors.indigo,size: iconSize),
        ),
    )
    );

  }

}