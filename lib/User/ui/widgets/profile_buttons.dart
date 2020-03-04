import 'package:flutter/material.dart';
import 'package:flutteraaaaa/User/ui/widgets/circle_button.dart';

class ProfileButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 5.0
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleButton(Icons.bookmark_border,Colors.white70, 15, "See the places you've saved"),
            CircleButton(Icons.card_giftcard, Colors.white70, 15, "Would you like to give someone a giftcard? :-)"),
            CircleButton(Icons.add, Colors.white, 17, "You've pressed the add button"),
            CircleButton(Icons.mail_outline, Colors.white70, 15, "Check your mailbox"),
            CircleButton(Icons.account_circle, Colors.white70, 17, "Edit profile")
          ],
        )
    );
  }

}