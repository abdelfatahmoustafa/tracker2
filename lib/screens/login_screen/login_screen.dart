import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
  import '../../componant/buttons_product_screen.dart';
import '../../componant/rich_text.dart';
import '../../componant/text_field.dart';
import '../../routes/app_route.dart';
import '../../utilis/constant.dart';
import '../register_screen/controller/register_controller.dart';
import 'controller/controller.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 17.w,
              vertical: 155.w,
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
                    children: [
                      Text(
                        'Hello Again !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 43.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      K.sizedBoxH,
                      SizedBox(
                        width: K.width,
                        child: Text(
                          'welcome back to your second home!',
                          style: TextStyle(
                            fontSize: 17.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      K.sizedBoxH,
                      K.sizedBoxH,

                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      K.sizedBoxH,
                      Container(
                        width: double.infinity,
                        height: 80.h,
                        child: Buttons(
                          onTap: () {
                            controller.login();
                             // print(controller.emailController.value);
                          },
                          label: 'Log In',
                          color: K.mainColor,
                          height: 41,
                          textColor: K.whiteColor,
                        ),
                      ),
                      K.sizedBoxH,
                      FixedRichText(
                        key: key,
                        leftLabel: "Not a member? ",
                        rightLabel: "Register Now",
                        onTab: () {
                          Get.toNamed(AppRoutes.registerScreen);
                        },
                      ),
                    ]),
              ),
            ),
        ),
    );
  }
}
