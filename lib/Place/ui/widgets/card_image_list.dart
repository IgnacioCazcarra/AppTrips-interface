import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/ui/widgets/card_images.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class CardList extends StatelessWidget{
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of<UserBloc>(context);
    return Container(
      height: 300.0,
      child: StreamBuilder(
        builder: (context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.done:
              return listViewPlaces(userBloc.buildPlaces(snapshot.data.documents));
            case ConnectionState.active:
              return listViewPlaces(userBloc.buildPlaces(snapshot.data.documents));
            case ConnectionState.none:
              return CircularProgressIndicator();
            default:
              return CircularProgressIndicator();
          }
        },
        stream: userBloc.placesStream,
      ),
    );
  }
  
  Widget listViewPlaces(List<CardImage> placesCard){
    return ListView(
      addAutomaticKeepAlives: false,
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(25.0),
      children : placesCard,
    );
  }

}