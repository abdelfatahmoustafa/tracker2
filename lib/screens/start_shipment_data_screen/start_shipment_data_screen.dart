import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/text_field.dart';
import '../../services/services.dart';
import '../../services/shipment_services.dart';
import '../../utilis/constant.dart';
import 'controller/start_shipment_data_Controller.dart';

class StartShipmentDataScreen extends StatelessWidget {
  StartShipmentDataScreen({Key? key}) : super(key: key);
  final con=Get.put(StartShipmentDataController());
  void initState() {
    con.initRetrieval();
  }
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'shipments',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 43.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),SizedBox(
                    child:
                 Obx(()=> StreamBuilder(
    stream: controller.initRetrieval(),
    builder: (context, snapshot) {
    if (!snapshot.hasData)
    return Center(
    child:
    CircularProgressIndicator(),
    );return ListView.builder(
                        itemCount: controller.listofShipments.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, index) {
                          // DataSnapshot snapshot,
                          // Animation<double> animation,
                          // int index) {
                          if (index == null) {
                          return Text("No Data");
                          } else {
                          return    Card(
                            child: Column(children: [
                                //
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ' ${controller.listofShipments[index].id.toString()}',
                                        style: const TextStyle(
                                            color: K.blackColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        ' ${controller.listofShipments[index].dt}',
                                        style:
                                        const TextStyle(color: K.mainColor),
                                      ),
                                    ]),
                                K.sizedBoxH,
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) {
                                                return AlertDialog(
                                                  title: const Text(
                                                      'Confirmation !!!'),
                                                  content: const Text(
                                                      'Are you sure to delete ? '),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx).pop();
                                                        },
                                                        child: const Text('No')),
                                                    TextButton(
                                                        onPressed: () async {
                                                          // controller.clear();
                                                          await ShipmentServices().fireCloud.collection('users').doc().collection('shipmentId').doc().delete();

                                                          // services.store
                                                          //     .ref(
                                                          // "users/${cont.user!.uid}/weight")
                                                          //     .child(snapshot
                                                          //     .key
                                                          //     .toString())
                                                          //     .remove();
                                                          // services.fireCloud.collection('users').doc(cont.user!.uid).delete();
                                                          Navigator.of(
                                                          ctx)
                                                              .pop();
                                                          print('xdhdb');
                                                        },
                                                        child: const Text('Yes')),
                                                  ],
                                                );
                                              });
                                        },
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.edit),
                                          onPressed: () async {
                                            showDialog(
                                                context: context,
                                                builder: (ctx) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                        'update the weight'),
                                                    content: TextField(
                                                      autofocus: true,
                                                      controller:
                                                          controller.shipmentId,
                                                      decoration:
                                                          const InputDecoration(
                                                              labelText: 'Weight',
                                                              hintText:
                                                                  '70 Kilo '),
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(ctx)
                                                                .pop();
                                                          },
                                                          child:
                                                              const Text('No')),
                                                      TextButton(
                                                          onPressed: () async {
                                                            // services.store
                                                            //     .ref(
                                                            // "users/${cont.user!.uid}/weight")
                                                            //     .child(snapshot
                                                            //     .key
                                                            //     .toString())
                                                            //     .update({
                                                            // 'weightNum':
                                                            // controller
                                                            //     .weight
                                                            //     .text
                                                            // });
                                                            // controller
                                                            //     .weight
                                                            //     .clear();
                                                            // Navigator.of(
                                                            // ctx)
                                                            //     .pop();
                                                          },
                                                          child:
                                                              const Text('Yes')),
                                                    ],
                                                  );
                                                });
                                          })
                                    ]),
                              ]


                            ),
                          );
                        }});}))),
                  FlatButton(onPressed: (){
                    controller.initRetrieval();
                  }, child: Text('dnjbdh'))

                ]),
          ),
          ),
          ),

    );
  }
}
