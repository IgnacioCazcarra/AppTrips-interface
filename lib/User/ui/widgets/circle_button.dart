import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {

  double iconSize;
  String description;
  IconData icon;
  Color circleColor;
  bool mini;
  final VoidCallback onPressed;

  CircleButton(this.icon, this.circleColor, this.iconSize, this.description,
      this.mini, @required this.onPressed);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CircleButton();
  }

}

class _CircleButton extends State<CircleButton>{

  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Expanded(
     child: FloatingActionButton(
          onPressed: widget.onPressed,
          backgroundColor: widget.circleColor,
          mini:  widget.mini,
          child: Icon(widget.icon,size: widget.iconSize,color: Colors.indigo),
     )
   );
  }



}