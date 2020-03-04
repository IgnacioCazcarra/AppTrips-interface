import 'package:flutter/material.dart';

class AddcircleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("You've pressed the add button"),
              )
          );
        },
        child: Container(
          margin: EdgeInsets.only(
            left: 15.0,
            right: 15.0
          ),
          child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(Icons.add,color: Colors.indigo,size: 25,)
          ),
        )
    );
  }
}

