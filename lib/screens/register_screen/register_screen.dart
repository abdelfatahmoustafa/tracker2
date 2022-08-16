

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tracker2/services/services.dart';
import '../../componant/buttons_product_screen.dart';
import '../../componant/rich_text.dart';
import '../../componant/text_field.dart';
import '../../routes/app_route.dart';
import '../../utilis/constant.dart';
import 'controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          padding: EdgeInsets.only(
            right: 10.w,
            left: 10.w,
            top: 155.h,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bk.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: GetBuilder<RegisterController>(
            init: RegisterController(),
            builder: (controller) => SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Welcome our new friend ',
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
                        'Sign Up now To your secnod home',
                        style: TextStyle(
                          fontSize: 17.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    K.sizedBoxH,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Recovery Password?",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: K.blackColor,
                            fontFamily: "Poppins SemiBold",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 80.h,
                      child: Buttons(
                        onTap: () {
                          controller.login();
                          // controller.validateForm(
                          //   controller.emailController,
                          //   controller.passController,
                          // );
                        },
                        label: 'Sign Up',
                        color: K.mainColor,
                        height: 41,
                        textColor: K.whiteColor,
                      ),
                    ),
                    K.sizedBoxH,
                    FixedRichText(
                      key: key,
                      leftLabel: "You have an account ? ",
                      rightLabel: "Log in ",
                      onTab: () {
                        Get.toNamed(AppRoutes.loginScreen);
                      },
                    ),
                  ]),
            ),
          ),
        ));
  }
}
