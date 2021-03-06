import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/screens/demo_app_screen/demo_app_screen.dart';
import 'package:info_session_fall_2020/screens/flutter_description_3/flutter_description.dart';
import 'package:info_session_fall_2020/screens/flutter_description_4/flutter_description_1.dart';
import 'package:info_session_fall_2020/screens/home_screen/home_screen.dart';
import 'package:info_session_fall_2020/screens/page_1/page_1.dart';
import 'package:info_session_fall_2020/screens/page_2/page_2.dart';
import 'package:info_session_fall_2020/screens/series_schedule_5/series_schedule.dart';

import 'package:syncfusion_flutter_core/core.dart';

void main() {
  SyncfusionLicense.registerLicense('NT8mJyc2IWhia31hfWN9Z2doYmN8Z3xhY2Fjc2FpYWVpZmJzAx5oITw7Mj04N2JjYxM0PjI6P30wPD4=');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'GoogleSans'
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Page1.routeName: (context) => Page1(),
        Page2.routeName: (context) => Page2(),
        FlutterDescription.routeName: (context) => FlutterDescription(),
        FlutterDescription1.routeName: (context) => FlutterDescription1(),
        SeriesSchedule.routeName: (context) => SeriesSchedule(),
        DemoAppScreen.routeName: (context) => DemoAppScreen()
      },
    );
  }
}