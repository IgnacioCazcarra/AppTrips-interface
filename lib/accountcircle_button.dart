import 'package:flutter/material.dart';

class AccountcircleButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Edit profile"),
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
               backgroundColor: Colors.white70,
               child: Icon(Icons.account_circle,color: Colors.indigo,size: 17),
        ),
    )
    );

  }

}