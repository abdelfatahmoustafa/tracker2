import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

 import '../utilis/constant.dart';
import 'load_screen.dart';
import 'login_screen/first_login_screen.dart';
import 'login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.mainColor,
      body: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 80,
              child: Image.asset("assets/images/logo.png"),
            ),
            const Center(
                child: Text(
              "Welcome To Task App",
              style: TextStyle(
                color: K.blackColor,
                fontSize: 32,
                fontWeight: FontWeight.bold
               ),
            ))
          ],
        ), nextScreen:    LoadingScreen(),
        backgroundColor: K.mainColor,
        splashIconSize: 250,
        duration: 4000,
        splashTransition: SplashTransition.scaleTransition,
        animationDuration: const Duration(seconds: 1),


      ),
    );
  }
}
