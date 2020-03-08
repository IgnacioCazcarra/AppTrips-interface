import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileimagesList extends StatelessWidget{

  UserBloc userBloc;

  Place place = Place(
      name: "Knuckles Mountains Range",
      description: "Hiking. Water fall hunting. Natural bath",
      imagePath: "https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      likes: 3
  );
  Place place2 = Place(
      name: "Mountains",
      description: "Hiking. Water fall hunting. Natural bath', 'Scenery & Photography",
      imagePath: "https://images.unsplash.com/photo-1524654458049-e36be0721fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      likes: 10
  );

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of<UserBloc>(context);

    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 50.0
        ),
      child: StreamBuilder(
          stream: userBloc.placesStream,
          builder: (context, AsyncSnapshot snapshot){
            switch(snapshot.connectionState){

              case ConnectionState.waiting:
                return CircularProgressIndicator();
              case ConnectionState.done:
                return Column(
                  children: userBloc.buildPlaces(snapshot.data.documents)
                );
              case ConnectionState.active:
                return Column(
                    children: userBloc.buildPlaces(snapshot.data.documents)
                );
              case ConnectionState.none:
                return CircularProgressIndicator();
              default:
                return Column(
                    children: userBloc.buildPlaces(snapshot.data.documents)
                );
            }
          }
      )
    );
  }

}