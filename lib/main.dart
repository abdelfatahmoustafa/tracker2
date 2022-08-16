import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tracker2/routes/app_route.dart';
import 'package:tracker2/routes/app_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'helper/cache_helper.dart';
 main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CacheHelper.init();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    VisualDensity.adaptivePlatformDensity;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return  MediaQuery(
      data: const MediaQueryData(
      ),
      child:ScreenUtilInit(
        designSize: const Size (428,926),
        builder :(BuildContext, Widget )=> GetMaterialApp(
          debugShowCheckedModeBanner: false,
           initialRoute: AppRoutes.splashScreen,
          getPages: AppScreens.screens,
        ),
      ),
    );
  }
}