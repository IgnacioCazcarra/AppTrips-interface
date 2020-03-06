import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  String title;
  double height;

  GradientBack({Key key , this.height});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

     double fullScreenHeight = MediaQuery.of(context).size.height;
     double fullScreenWidth = MediaQuery.of(context).size.width;

    if(height==null){
       height = fullScreenHeight;
    }

    return Container(
      height: height,
      width: fullScreenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
          stops: [0.0,0.6],
          tileMode: TileMode.clamp
        )
      ),

      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5,-0.8),
        child: Container(
          width: fullScreenHeight*2,
          height: fullScreenHeight*1.5,
          decoration: BoxDecoration(
            color: Color.fromRGBO(86, 58, 220, 0.5),
            borderRadius: BorderRadius.circular(fullScreenHeight/2)
          ),
        ),
      ),

        /*Text(
        title,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),*/
      //alignment: Alignment(-0.9,-1.1)

    );
  }

}