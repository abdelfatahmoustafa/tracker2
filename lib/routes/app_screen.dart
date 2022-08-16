import 'package:get/get.dart';
  import '../screens/home/home.dart';
 import '../screens/login_screen/login_screen.dart';
import '../screens/register_screen/register_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/start_shipment_data_screen/start_shipment_data_screen.dart';
import 'app_route.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.home, page: () => const Home()),
    GetPage(name: AppRoutes.loginScreen, page: () =>   LoginScreen()),
    GetPage(name: AppRoutes.startshipmentdataScreen, page: () =>   StartShipmentDataScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () =>   RegisterScreen()),
  ];
}
