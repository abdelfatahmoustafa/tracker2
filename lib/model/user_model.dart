import 'dart:io';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

class UserModel {
  String? name;
  String? pass;

  UserModel({
    this.name,
    this.pass,

  });

  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
     name = map['name'];
    pass = map['pass'];
  }

  toJson() {
    return {
      'name': name,
      'pass': pass,
    };
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['pass'] = pass;
    return map;
  }

  UserModel.fromFirebaseFireStore(Map<dynamic, dynamic> firestore)
      : name = firestore['name'],
        pass = firestore['pass'];
}
