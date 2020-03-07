import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/Place/ui/widgets/card_images.dart';
import 'package:flutteraaaaa/Place/ui/widgets/location_input.dart';
import 'package:flutteraaaaa/Place/ui/widgets/text_input.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:flutteraaaaa/User/ui/widgets/title_header.dart';
import 'package:flutteraaaaa/widgets/gradient_back.dart';
import 'package:flutteraaaaa/widgets/purple_button.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

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

  final _controllerTitlePlace = TextEditingController();
  final _controllerDescriptionPlace = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);

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
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              right: 20,
              top: 70
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                //Aca iria la foto,
                Container(
                  margin: EdgeInsets.only(bottom: 20, right: 10,left: 10),
                  child: CardImage(image_path: "assets/images/japan2.jpg", height: 250.0, width: 350.0, icon: Icons.photo_camera, onPressedFABIcon: (){}),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: TextInput(hint_text: "Title", text_input: null, max_lines: 1, controller: _controllerTitlePlace),
                ),
                TextInput(hint_text: "Description", text_input: TextInputType.multiline, controller: _controllerDescriptionPlace, max_lines: 6),
                Container(
                  margin: EdgeInsets.only(bottom: 30,top: 10),
                  child: LocationInput(hint_text: "Add location", icon: Icons.location_on),
                ),
                PurpleButton(
                  text: "Submit",
                  onPressed: (){
                    //1-Firebase Storage

                    //2-Cloud firestore
                    userBloc.updatePlaceData(Place(
                      name: _controllerTitlePlace.text,
                      description: _controllerDescriptionPlace.text,
                      likes: 0,
                    )).whenComplete((){Navigator.pop(context);});
                  }
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}