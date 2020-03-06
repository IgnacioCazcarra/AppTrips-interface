import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/ui/widgets/title_header.dart';
import 'package:flutteraaaaa/widgets/gradient_back.dart';

class AddPlaceScreen extends StatefulWidget{

  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return _AddPlaceScreen();
  }

}

class _AddPlaceScreen extends State<AddPlaceScreen>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(height: 300.0),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 5
                ),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,color: Colors.white,size: 40),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )

                ),
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(
                      top: 25,
                      left: 30
                  ),
                  child: TitleHeader(title: "Add a new place"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}