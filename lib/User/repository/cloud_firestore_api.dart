import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/Place/ui/widgets/card_images.dart';
import 'package:flutteraaaaa/User/model/user.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images.dart';

class CloudFirestoreAPI{

  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;


  void updateUserData(User user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'imagePath': user.imagePath,
      'myPlaces': user.myPlaces,
      'savedPlaces': user.savedPlaces,
      'lastSignIn': DateTime.now()
    }, merge: true);

  }

  Future<void> updatePlaceData(Place place) async{
    CollectionReference refPlaces = _db.collection(PLACES);

    _auth.currentUser().then((FirebaseUser user) {
       refPlaces.add(
          {'name': place.name,
          'description': place.description,
          'likes': place.likes,
          'imagePath': place.imagePath,
          'UserOwner': _db.document("${USERS}/${user.uid}") //reference
          }).then((DocumentReference dr){
          dr.get().then((DocumentSnapshot snapshot ){
           snapshot.documentID;
           DocumentReference refUsers = _db.collection(USERS).document(user.uid);
           refUsers.updateData({
             'myPlaces': FieldValue.arrayUnion([_db.document("${PLACES}/${snapshot.documentID}")])
           });
         });
       });
    }
    );

  }

  List<ProfileImages> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot){
    List<ProfileImages> profileImages = List<ProfileImages>();
    placesListSnapshot.forEach((p){
      profileImages.add(ProfileImages(Place(
        name: p.data['name'], imagePath: p.data['imagePath'], description: p.data['description'], likes: p.data['likes'],
      ),true));
    });
    return profileImages;
  }

  List<CardImage> buildPlaces(List<DocumentSnapshot> placesListSnapshot){
    List<CardImage> placesCard = List<CardImage>();
    placesListSnapshot.forEach((p){
      placesCard.add(CardImage(
          image_path: p.data['imagePath'],
          height: 250.0,
          width: 300.0,
          icon: Icons.favorite_border,
          onPressedFABIcon: (){
            likePlace(p.documentID);
          }
          ));
    });

    return placesCard;
  }

  Future likePlace(String idPlace) async{
    await _db.collection(PLACES).document(idPlace).get()
        .then((DocumentSnapshot ds){
          int likes = ds.data['likes'];
          _db.collection(PLACES).document(idPlace).updateData({
            'likes': likes+=1
          });

    });
  }


}