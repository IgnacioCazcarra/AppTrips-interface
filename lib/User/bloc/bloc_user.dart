import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutteraaaaa/Place/model/place.dart';
import 'package:flutteraaaaa/Place/repository/firebase_storage_repository.dart';
import 'package:flutteraaaaa/Place/ui/widgets/card_images.dart';
import 'package:flutteraaaaa/User/model/user.dart';
import 'package:flutteraaaaa/User/repository/cloud_firestore_api.dart';
import 'package:flutteraaaaa/User/repository/cloud_firestore_repository.dart';
import 'package:flutteraaaaa/User/ui/widgets/profile_images.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutteraaaaa/User/repository/auth_repository.dart';

class UserBloc implements Bloc{

  final _auth_repository = AuthRepository();

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;
  Future<FirebaseUser> get currentUser => FirebaseAuth.instance.currentUser();


  //Sign in con google
  Future<FirebaseUser> signIn() => _auth_repository.signInFirebase();

  //Registrar usuario en la base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepository.updatePlaceData(place);
  Stream<QuerySnapshot> placesListStream = Firestore.instance.collection(CloudFirestoreAPI().PLACES).snapshots();
  Stream<QuerySnapshot> get placesStream => placesListStream;
  Stream<QuerySnapshot> myPlacesListStream(String uid) => Firestore.instance.collection(CloudFirestoreAPI().PLACES)
      .where("userOwner", isEqualTo: Firestore.instance.document("${CloudFirestoreAPI().USERS}/$uid"))
      .snapshots();

  List<ProfileImages> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreRepository.buildMyPlaces(placesListSnapshot);
      List<CardImage> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<StorageUploadTask> uploadFile(String path, File image) => _firebaseStorageRepository.uploadFile(path, image);

  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}