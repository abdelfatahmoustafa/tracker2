import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../componant/buttons_product_screen.dart';
import '../../routes/app_route.dart';
import '../../utilis/constant.dart';

class FirstLoginScreen extends StatelessWidget {
  const FirstLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.w,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bk.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
            width: double.infinity,
                height: 408.h,
                child: Image.asset('assets/images/Splashimage.png'),
              ),
              Spacer(),
              Text(
                'Let\'s get you ready',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 43.sp,
                ),
                textAlign: TextAlign.center,
              ),
              K.sizedBoxH,
              K.sizedBoxH,
              SizedBox(
                width: K.width,
                child: Text(
                  'labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris',
                  style: TextStyle(
                    fontSize: 17.sp,
                  ), textAlign: TextAlign.center,
                ),
              ),
              K.sizedBoxH,
              Spacer(),
              Row(
                  children: [
                    Expanded(child: Buttons(label: 'Sign Up',color: K.whiteColor,height:81,onTap: (){Get.toNamed(AppRoutes.registerScreen);}, textColor: K.blackColor,)),
                    Expanded(child: Buttons(label: 'Login',color: K.whiteColor.withOpacity(.5),height:81, textColor: K.blackColor,onTap: (){Get.toNamed(AppRoutes.loginScreen);},)),
                    ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}
