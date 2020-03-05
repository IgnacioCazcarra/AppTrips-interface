import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileInfo extends StatelessWidget{

  UserBloc userBloc;

  String imagePath;
  String profileName;
  String profileEmail;

  ProfileInfo(this.imagePath,this.profileName,this.profileEmail);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot){

        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return null;
          case ConnectionState.done:
            return CircularProgressIndicator();
          default: return null;
        }
      }
    );

    /*final image = Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(
        top: 20,
        left: 30,
        bottom: 25
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 1.5),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imagePath
          )
        )
      ),
    );

    final name = Container(
      margin: EdgeInsets.only(
        top: 35,
        left: 24,
      ),
      child: Text(
        profileName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontFamily: "Spartan"
        ),
      ),
    );

    final email = Container(
      margin: EdgeInsets.only(
        top: 5,
      ),
      child: Text(
        profileEmail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.w400,
            color: Colors.white70,
            fontFamily: "Spartan"
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        image,
        Column(
          children: <Widget>[
            name,
            email
          ],
        ),
      ],
    );*/

  }

  Widget showProfileInfo(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      print("El usuario no ha sido logueado");
    }
    else print("Usuario logueado");

  }


}