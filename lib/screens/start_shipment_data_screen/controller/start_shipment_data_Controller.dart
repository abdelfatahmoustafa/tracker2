import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:tracker2/model/shipment_model.dart';
import 'package:intl/intl.dart';

import '../../../services/shipment_services.dart';

class StartShipmentDataController extends GetxController{
final services =ShipmentServices();
 final listofShipments = <ShipmentModel>[].obs;

final shipmentId=TextEditingController();
@override
void initState() {
   initRetrieval();
}
validateIdForm(shipmentId){
  try {

    if(shipmentId.text.isEmpty){
    Fluttertoast.showToast(
        msg: "please Add Number",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 12.0);
  }else{
      addNewShipmentId();
    }
  }catch (e){
    print('error $e');
  }
}
addNewShipmentId()async {
  var dt = DateTime.now();
  final DateFormat formatter = DateFormat("dd MMMM yyyy");
  var today = formatter.format(dt);
  ShipmentModel shipmentModel=ShipmentModel(id: shipmentId.text,dt: today);
 await services.addNewShipmentId(shipmentModel);
  shipmentId.clear();
}



initRetrieval() async {
    listofShipments.assignAll(await services.retrieveShipmentModel());
print(listofShipments.length);
  // listofShipments = await services.retrieveShipmentModel();
 }
 clear()async{
 await services.clear();
 }

}