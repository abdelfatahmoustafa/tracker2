import 'package:firebase_auth/firebase_auth.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
 import 'package:get/get.dart';
 import '../../../helper/cache_helper.dart';
import '../../../services/services.dart';
import '../../home/home.dart';
import '../../login_screen/login_screen.dart';


class RegisterController extends GetxController {
  final services = RegisterServices();
  final emailController = TextEditingController();
  final passController = TextEditingController();


  login(){
    services.signInAnonymously().then((value) => Get.offAll(Home()));

    Fluttertoast.showToast(msg: 'Login Successful');
  }
  logout(){
    services.signOut();

  }
/************/



}