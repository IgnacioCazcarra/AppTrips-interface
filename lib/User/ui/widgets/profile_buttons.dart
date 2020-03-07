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
            CircleButton(Icons.bookmark_border,Colors.white70, 15,true, () => {

            } ),
            //Agregar fotos
            CircleButton(Icons.add_a_photo, Colors.white, 30,false, (){
              File image;
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddPlaceScreen(image: image)));
            } ),
            //Cerrar sesion
            CircleButton(Icons.exit_to_app, Colors.white70, 17,true, () => {
              userBloc.signOut()
            } )
          ],
        )
    );
  }

}