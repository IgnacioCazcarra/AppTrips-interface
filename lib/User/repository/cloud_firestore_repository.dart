import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/User/model/user.dart';
import 'package:flutteraaaaa/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository{
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);


}