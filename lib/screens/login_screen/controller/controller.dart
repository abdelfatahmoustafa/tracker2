import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../helper/cache_helper.dart';
import '../../../model/user_model.dart';
import '../../../routes/app_route.dart';
 import '../../../services/services.dart';
import '../../../utilis/constant.dart';
 import '../../home/home.dart';
import '../../load_screen.dart';

class LoginController extends GetxController{
  // final services = RegisterServices();
  // final emailController = TextEditingController();
  // final passController = TextEditingController();
  //
  //
  //
  // void login() async
  // {
  //   final User? firebaseUser;
  //
  //   firebaseUser= (await services.auth
  //       .signInWithEmailAndPassword(
  //     email: emailController.text.trim(),
  //     password: passController.text.trim(),
  //
  //   ).catchError((msg) {
  //     Fluttertoast.showToast(msg: 'Error*in login : $msg'.toString());
  //   })).user;
  //
  //   if (firebaseUser != null) {
  //     services.currentFirebaseUser.value = firebaseUser ;
  //     CacheHelper.saveData(key: 'email', value: emailController.text);
  //     CacheHelper.saveData(key: 'password', value: passController.text);
  //
  //     Fluttertoast.showToast(msg: 'Login Successful');
  //     Get.offAll(  Home());
  //
  //   } else {
  //     Get.back();
  //     Fluttertoast.showToast(msg: 'Error while sign in');
  //   }
  //
  // }

  // validateForm(  emailController,   passController) {
  //   try {
  //     if (!emailController.text.contains('@')) {
  //       Fluttertoast.showToast(
  //           msg: "Email address is not valid",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.TOP,
  //           timeInSecForIosWeb: 3,
  //           backgroundColor: Colors.black,
  //           textColor: Colors.white,
  //           fontSize: 12.0);
  //     }
  //
  //     else if (passController.text.isEmpty) {
  //       Fluttertoast.showToast(
  //           msg: "Password is mandatory",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.TOP,
  //           timeInSecForIosWeb: 3,
  //           backgroundColor: K.blackColor,
  //           textColor: Colors.white,
  //           fontSize: 12.0);
  //     }
  //     else {
  //       login( );
  //     }
  //   } catch (on) {
  //     printError(info: 'error');
  //   }
  // }



}