import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utilis/constant.dart';
import '../Home_screen/home_screen.dart';
 import '../profile_screen/profile_screen.dart';
import '../start_shipment_data_screen/start_shipment_data_screen.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      HomeScreen(),
      StartShipmentDataScreen(),
      ProfileScreen( ),

    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
        body:
    Obx(() =>Center(
              child: body.elementAt(_controller.selectIndex),
            )) ,
        bottomNavigationBar: Obx(() => ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              child: BottomNavigationBar(
                items:   <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon:   Icon(Icons.home),
                    label: 'Home',
                  ),const BottomNavigationBarItem(
                    icon:   Icon(Icons.local_shipping),
                    label: 'shipments',
                  ),
                  BottomNavigationBarItem(
                    icon: new Icon(Icons.account_circle_outlined),
                    label: 'Profile',
                  ),
                ],
                selectedItemColor: K.mainColor,
                unselectedItemColor: K.grayColor,
                backgroundColor: K.whiteColor,
                type: BottomNavigationBarType.fixed,
                currentIndex: _controller.selectIndex,
                onTap: (index) {
                  _controller.select(index);
                },
              ),
            )));
  }
}
