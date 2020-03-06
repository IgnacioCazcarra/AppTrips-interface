import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/ui/screens/addplace_screen.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:flutteraaaaa/User/ui/widgets/circle_button.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileButtons extends StatelessWidget{
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 5.0
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Mostrar fotos guardadas
            CircleButton(Icons.bookmark_border,Colors.white70, 15, "See the photos you've saved",true, () => {

            } ),
            //Agregar fotos
            CircleButton(Icons.add, Colors.white, 17, "You've pressed the add button",false, (){
              File image;
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddPlaceScreen(image: image)));
            } ),
            //Cerrar sesion
            CircleButton(Icons.exit_to_app, Colors.white70, 17, "Edit profile",true, () => {
              userBloc.signOut()
            } )
          ],
        )
    );
  }

}