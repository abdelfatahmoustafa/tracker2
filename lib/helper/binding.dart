  import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:tracker2/screens/home/controller/home_controller.dart';

 import '../screens/login_screen/controller/controller.dart';
 import '../screens/register_screen/controller/register_controller.dart';
import '../screens/start_shipment_data_screen/controller/start_shipment_data_Controller.dart';



class Binding extends Bindings {
  @override
  void dependencies (){
     Get.lazyPut(() => HomeController());
     Get.lazyPut(() => StartShipmentDataController());
      Get.lazyPut(() => LoginController());
     Get.lazyPut(() => RegisterController());

  }
}