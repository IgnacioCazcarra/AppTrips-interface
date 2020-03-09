import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:flutteraaaaa/User/model/user.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_info.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class ProfileHeader extends StatelessWidget {
  User user;

  ProfileHeader(@required this.user);

  @override
  Widget build(BuildContext context) {

  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logeado");
      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información. Haz login")
          ],
        ),
      );
    } else {
      print("Logeado");
      print(snapshot.data);
      user = User(imagePath: snapshot.data.photoUrl,
          name: snapshot.data.displayName,
          email: snapshot.data.email);

      return Container(
        child: ProfileInfo(user),
      );
    }
  }
}