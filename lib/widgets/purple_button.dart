
import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget{

  final String text;
  final VoidCallback onPressed;

  PurpleButton({Key key, this.text,this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(

      onTap: onPressed,

      child: Container(
        margin: EdgeInsets.only(
          top: 5.0,
          bottom: 20.0,
          left: 20.0,
          right: 20.0
        ),
      height: 60.0,
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
          stops: [0.0,0.6],
          tileMode: TileMode.clamp,
        )
      ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}