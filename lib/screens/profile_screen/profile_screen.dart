 import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:get/get.dart';
import '../../componant/buttons_product_screen.dart';
import '../../componant/custom_appBar.dart';
import '../../routes/app_route.dart';
import '../../utilis/constant.dart';
import '../register_screen/controller/register_controller.dart';

class ProfileScreen extends StatelessWidget {
    ProfileScreen({Key? key}) : super(key: key);
  RegisterController registerController=RegisterController();

  @override
  Widget build(BuildContext context) {
    return      Scaffold(
      appBar: const CustomAppBar(
        label: "Profile",
        actions: [],
      ),
      body: Center(

        child:  Container(
          height: 80,
          width: 120,
          child: Buttons(
            onTap: (){
              // registerController.signout();


            },
            label: 'Sign Out =>',color: K.mainColor,height:41, textColor: K.whiteColor,),
        ),



    ));
  }
}
