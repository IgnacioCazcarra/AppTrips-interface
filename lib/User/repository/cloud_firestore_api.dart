import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/User/model/user.dart';

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
          'UserOwner': "${USERS}/${user.uid}" //reference
          }
      );
    }
    );

  }

}