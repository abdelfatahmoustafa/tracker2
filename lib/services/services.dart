import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../helper/cache_helper.dart';
import '../routes/app_route.dart';
import 'general_services.dart';

class RegisterServices implements GeneralServices {

  signInAnonymously() async {
    try {
      final userCredential = await auth.signInAnonymously();
      print("Signed in with temporary account.");
      currentFirebaseUser=userCredential.user;
       CacheHelper.saveData(key: 'token', value: userCredential.user?.uid);
       CacheHelper.saveData(key: 'user', value: currentFirebaseUser);

    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    }
  }
  signOut()async{
    await CacheHelper.removeData(key: 'token');
    await CacheHelper.clearData().then((value) =>
        Get.offAllNamed(AppRoutes.splashScreen)
    );
  }

  @override
  User? currentFirebaseUser;

  @override
  // TODO: implement auth
  FirebaseAuth get auth => throw UnimplementedError();

  @override
  // TODO: implement fireCloud
  FirebaseFirestore get fireCloud => throw UnimplementedError();
}
