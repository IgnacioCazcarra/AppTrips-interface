
import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget{

  String navigateButton;

  NavigateButton(this.navigateButton);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("You've pressed the navigate button"),
          )
        );
      },
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
            navigateButton,
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