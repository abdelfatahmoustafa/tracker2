import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GeneralServices {
  final auth = FirebaseAuth.instance;
  final fireCloud = FirebaseFirestore.instance;
  User? currentFirebaseUser  ;
  signOut(){}
  signInAnonymously(){}

}