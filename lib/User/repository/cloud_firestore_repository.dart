import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/Place/ui/widgets/card_images.dart';
import 'package:flutteraaaaa/User/model/user.dart';
import 'package:flutteraaaaa/User/repository/cloud_firestore_api.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images.dart';

class CloudFirestoreRepository{
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);

  List<ProfileImages> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildMyPlaces(placesListSnapshot);
  List<CardImage> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildPlaces(placesListSnapshot);
}