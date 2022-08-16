import 'package:cloud_firestore/cloud_firestore.dart';

class ShipmentModel {

    String? id;
    String ? dt;

    ShipmentModel({
      this.id,
      this.dt,

  });

  static ShipmentModel fromMap(QueryDocumentSnapshot<Map<String, dynamic>> map) {
    return ShipmentModel(
      id: map['id'],
      dt: map['dt'],
    );
  }
    Map<String, dynamic> toMap() {
      return {
        'id': id,
        'dt': dt,

      };
    }
}