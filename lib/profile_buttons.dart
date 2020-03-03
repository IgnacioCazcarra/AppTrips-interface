import 'package:flutter/material.dart';
import 'package:flutteraaaaa/accountcircle_button.dart';
import 'package:flutteraaaaa/addcircle_button.dart';
import 'package:flutteraaaaa/bookmark_button.dart';
import 'package:flutteraaaaa/giftcard_button.dart';
import 'package:flutteraaaaa/mailbox_button.dart';

class ProfileButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BookmarkButton(),
            GiftcardButton(),
            AddcircleButton(),
            MailboxButton(),
            AccountcircleButton()
          ],
        )
      ],
    );
  }

}