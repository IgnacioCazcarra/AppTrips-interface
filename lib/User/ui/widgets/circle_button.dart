import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget{

  double iconSize;
  String description;
  IconData icon;
  Color circleColor;
  CircleButton(this.icon,this.circleColor,this.iconSize, this.description);

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
               mini: true,
               backgroundColor: circleColor,
               child: Icon(Icons.account_circle,color: Colors.indigo,size: iconSize),
        ),
    )
    );

  }

}