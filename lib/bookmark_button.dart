import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("See the places you've saved"),
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
             child: Icon(Icons.bookmark_border,color: Colors.indigo,size: 15),
           ),
         )
     );
  }

}