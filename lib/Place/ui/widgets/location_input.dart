import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget{

  final String hint_text;
  final TextEditingController controller;
  final IconData icon;

  LocationInput({Key key, @required this.hint_text, @required this.controller,this.icon});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.bold,
        fontFamily: "Roboto",
        fontSize: 15.0
        ),
        decoration: InputDecoration(
          hintText: hint_text,
          suffixIcon: Icon(icon),
          fillColor: Color(0xFFFFFFFF),
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white12),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          )
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 30.0,//Cuanto queres que se difumine
            offset: Offset(0.0,7.0)
          )
        ]
      ),
    );
  } //Para controlar los datos a la hora de guardar en firebase


}