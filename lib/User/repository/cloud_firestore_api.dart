import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
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

  List<ProfileImages> buildPlaces(List<DocumentSnapshot> placesListSnapshot){
    List<ProfileImages> profileImages = List<ProfileImages>();
    placesListSnapshot.forEach((p){
      profileImages.add(ProfileImages(Place(
        name: p.data['name'], imagePath: p.data['imagePath'], description: p.data['description'], likes: p.data['likes']
      )));
    });
    return profileImages;
  }


}