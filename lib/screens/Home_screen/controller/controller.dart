import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:tracker2/routes/app_route.dart';
import '../../../helper/cache_helper.dart';
import '../../../services/services.dart';
import 'package:intl/intl.dart';
class HomeScreenController extends GetxController {
  final services = RegisterServices();
  final phone = TextEditingController();
  final name = TextEditingController();
  dynamic userid = CacheHelper.getData(key: 'token');

  @override
  void onInit() {
    addNew();
  }

  validateForm(name, phone) {
    try {
      if (name.text.isEmpty) {
        Fluttertoast.showToast(
            msg: "the Name is mandatory ",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 12.0);
      }   else if (phone.isEmpty   ) {
        Fluttertoast.showToast(
            msg: "Phone Number is mandatory",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 12.0);
      }
       else {
        addNew().then((value) => Get.offAllNamed(AppRoutes.startshipmentdataScreen));
      }
    } catch (on) {
      printError(info: 'error');
    }
  }

  addNew() async {
    var dt = DateTime.now();
    final DateFormat formatter = DateFormat("dd MMMM yyyy");
    var today = formatter.format(dt);
    try {
      await services.fireCloud
          .collection('users')
          .doc(userid)
          .collection('info')
          .add({
        "id": userid.toString(),
        "profileName": name.text,
        "phone": phone.text,
        "timestamp": today,
        "bio": ""
      });
      CacheHelper.saveData(key: 'infoAdded', value: name.text);
      Fluttertoast.showToast(
        msg: "the info is added successfully ",
      );
      name.clear();
      phone.clear();
      print(userid.toString());
      update();
    } catch (e) {
      print(e.toString());
    }
  }

}
