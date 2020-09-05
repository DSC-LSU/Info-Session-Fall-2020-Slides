import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';
import 'package:prefab_app/screens/home_screen/home_screen.dart';
import 'package:prefab_app/screens/prefab_screen/prefab_screen.dart';

class DemoAppScreen extends StatelessWidget {
  static final String routeName = '/demo_app';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: HomeScreen(),
      ),
    );
  }
}