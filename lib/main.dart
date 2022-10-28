// @dart=2.9
import 'package:enerji_diyeti_5/features/home_screen_button/energy_save/energy_save_menu/electric_save/electric_save.dart';
import 'package:enerji_diyeti_5/features/home_screen_button/food_screen/food_screen.dart';
import 'package:enerji_diyeti_5/features/home_screen_button/water_calculator/water_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/home_screen/home_screen.dart';
import 'features/home_screen_button/water_calculator/water_calculator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    initialRoute: 'homeScreen',
    routes: {
      'homeScreen': (context) => HomeScreen(),
      'energySave': (context) => HeroAnimation(),
      'foodScreen': (context) => FoodScreen(),
      'waterMain': (context) => WaterMain(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget,
          );
        },
        home: HomeScreen(),
      ),
    );
  }
}
