import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import '../helper/cache_helper.dart';
import '../utilis/constant.dart';
import 'home/home.dart';
import 'login_screen/first_login_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}
dynamic name = CacheHelper.getData(key: 'token');

startTimer(){
  Timer(Duration(seconds: 3), ()async
  {
    if(name != null){
      Get.offAll(  const Home());
    }
    else{
      Get.to(  const FirstLoginScreen());
    }
   }
  );
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
     super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:Center(
          child:  Container(
              height: K.height,
              color: K.whiteColor,
              child:
              SpinKitWanderingCubes(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? K.mainColor : K.mainColor.withOpacity(.8),
                    ),
                  );
                },
              )
          ),
        ),
      );
  }
}
