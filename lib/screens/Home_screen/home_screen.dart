import 'package:firebase_auth/firebase_auth.dart';
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
 import '../../componant/buttons_product_screen.dart';
import '../../componant/custom_appBar.dart';
import '../../componant/text_field.dart';
import '../../helper/cache_helper.dart';
import '../../services/services.dart';
import '../../utilis/constant.dart';
import '../register_screen/controller/register_controller.dart';
import '../start_shipment_data_screen/controller/start_shipment_data_Controller.dart';
import 'controller/controller.dart';

class HomeScreen extends StatelessWidget {
  User? user;
   final services = RegisterServices();
  final cont=Get.put(RegisterController());

  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // weightRef =
      //     FirebaseDatabase.instance.reference().child('tasks').child(user!.uid);
    }
  }
  dynamic infoAdded = CacheHelper.getData(key: 'infoAdded');

  @override
  Widget build(BuildContext context) {
    return infoAdded ==null?
        addNewWidget():
    infoAddedAlreadyWidget();

  }
}
class addNewWidget extends StatelessWidget {
  const addNewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
      extendBodyBehindAppBar: true, // add this line
      appBar: const CustomAppBar(
        label: 'Add Your data',
        actions: [],
      ),
      body: Container(
          height: double.infinity,
          padding: EdgeInsets.only(
            right: 17.w,
            left: 17.w,
            top: 100.w,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/bk.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: GetBuilder<HomeScreenController>(
              init: HomeScreenController(),
              builder: (HomeScreenController controller) =>
                  SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            K.sizedBoxH,
                            CustomTextField(
                              key: key,
                              type: TextInputType.name,
                              obSecure: false,
                              controller: controller.name,
                              label: "User name",
                              function: (v) {
                                print(v);
                              },
                            ),
                            K.sizedBoxH,
                            CustomTextField(
                              key: key,
                              type: TextInputType.phone,

                              controller: controller.phone,
                              label: "phone",
                              function: (v) {
                                print(v);
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 80.h,
                              child: Buttons(
                                onTap: () async {
                                  controller.validateForm(controller.name,controller.phone);
                                },
                                label: 'Submit',
                                color: K.mainColor,
                                height: 41,
                                textColor: K.whiteColor,
                              ),
                            ),
                            K.sizedBoxH,

                          ])))));}}


class infoAddedAlreadyWidget extends StatelessWidget {
  const infoAddedAlreadyWidget({Key? key}) : super(key: key);

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
          child: GetBuilder<StartShipmentDataController>(
            init: StartShipmentDataController(),
            builder: (controller) => SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Welcome , Please enter the shipment id to start ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),K.sizedBoxH,
                    K.sizedBoxH,
                    CustomTextField(
                      key: key,
                      controller: controller.shipmentId,
                      label: "shipment id",
                      function: (v) {
                        print(v);
                      },
                    ),
                    K.sizedBoxH,
                    Container(
                      width: 150.w,
                      height: 50.h,
                      child: Buttons(
                        onTap: () async {
                          controller.validateIdForm(controller.shipmentId);
                        },
                        label: 'Submit',
                        color: K.mainColor,
                        height: 41,
                        textColor: K.whiteColor,
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }}