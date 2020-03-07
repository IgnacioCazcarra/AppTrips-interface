import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{

  final String hint_text;
  final TextInputType text_input;
  final TextEditingController controller; //Para controlar los datos a la hora de guardar en firebase
  int max_lines = 1;

  TextInput({Key key, @required this.hint_text, @required this.text_input, @required this.controller, this.max_lines});


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
        keyboardType: text_input,
        maxLines: max_lines,
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto",
          fontSize: 15.0
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(208, 208, 208, 1),
          border: InputBorder.none,
          hintText: hint_text,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white30),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )
        ),
      ),

      );
  }

}