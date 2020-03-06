import 'package:flutter/material.dart';

class FavButton extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavButton();
  }

}

class _FavButton extends State<FavButton>{

  bool _isFavorited = false;

  _FavButton();

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      }
      else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.pink,
      mini: true,
      splashColor: Colors.pink,
      child: _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      onPressed: _toggleFavorite,
      heroTag: null,
    );
  }

}