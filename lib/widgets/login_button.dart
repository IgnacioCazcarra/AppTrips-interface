import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginButton extends StatefulWidget{

  double height;
  double width;
  final String text;
  final VoidCallback onPressed;

  LoginButton({Key key, @required this.text, @required this.onPressed, this.height, this.width});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginButton();
  }

}

class _LoginButton extends State<LoginButton>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: 5.0,
            bottom: 20.0,
            left: 20.0,
            right: 20.0
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white
        ),
      ),
    );
  }

}