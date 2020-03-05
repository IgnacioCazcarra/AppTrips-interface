import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutteraaaaa/app_trips.dart';
import 'package:flutteraaaaa/app_trips_cupertino.dart';
import 'package:flutteraaaaa/widgets/gradient_back.dart';
import 'package:flutteraaaaa/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }

}

class _SignInScreen extends State<SignInScreen>{

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }


  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData || snapshot.hasError){
          return signInGoogleUI();
        }
        else return AppTripsCupertino();
      },
    );
  }

  Widget signInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("",null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
               "Welcome.\nThis is your travel app.",
               style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 30.0,
                 fontFamily: "Spartan"
               ),
              ),
              SignInButton(
                Buttons.Google,
                text: "Sign in with Google",
                padding: EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                ),
                onPressed: () {
                  userBloc.signIn().then((FirebaseUser user) => print(user));
                },
              ),

            ],
          )
        ],
      ),
    );
}

}