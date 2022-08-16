import 'package:cloud_firestore/cloud_firestore.dart';

import '../helper/cache_helper.dart';
import '../model/shipment_model.dart';

class ShipmentServices{
  final fireCloud = FirebaseFirestore.instance;
  dynamic userid = CacheHelper.getData(key: 'token');

  addNewShipmentId( shipmentModel )async{
    await fireCloud.collection('users').doc(userid).collection('shipmentId')
        .add( shipmentModel.toMap());
  }


//   Future  retrieveEmployees() async {
//     try{
//    // final   documentSnapshot =await fireCloud
//    //     .collection('shipmentId')
//    //     .orderBy('dt',descending:true)
//    //     .get();
//    //  listofShipments=await List.from(documentSnapshot.docs.map((e) => ShipmentModel.fromMap(e)));
//    // print(listofShipments.length);
//    //
//    //  return listofShipments;
//
//   }
//   catch (e){
// print('object');
//   }
// }

  Future<List<ShipmentModel>> retrieveShipmentModel() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
    await fireCloud.collection('users').doc(userid).collection('shipmentId')
        .orderBy('dt',descending:true)
        .get();
    return snapshot.docs
        .map((docSnapshot) => ShipmentModel.fromMap(docSnapshot))
        .toList();
  }
  clear()async{

  }
}