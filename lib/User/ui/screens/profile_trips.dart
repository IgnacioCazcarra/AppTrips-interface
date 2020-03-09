import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:flutteraaaaa/User/model/user.dart';
import 'package:flutteraaaaa/User/ui/screens/profile_header.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_buttons.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images_list.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_info.dart';
import 'package:flutteraaaaa/User/ui/widgets/title_header.dart';
import 'package:flutteraaaaa/widgets/gradient_back.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class ProfileTrips extends StatelessWidget{
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.done:
            return showProfileData(snapshot);
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.none:
            return CircularProgressIndicator();
          default:
            return CircularProgressIndicator();
        }
      },
    );

  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      return Stack(
        children: <Widget>[
          GradientBack(height: 250.0),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Text("Usuario no logueado. Haz login")
            ],
          ),
        ],
      );
    }
    else{
      var user = User(
          uid: snapshot.data.uid,
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          imagePath: snapshot.data.imagePath
      );
      return Stack(
        children: <Widget>[
          GradientBack(height: 250.0),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              TitleHeader(title: "Profile"),
              ProfileHeader(user),
              ProfileButtons(),
              ProfileimagesList(user)
            ],
          ),
        ],
      );
    }
  }

}