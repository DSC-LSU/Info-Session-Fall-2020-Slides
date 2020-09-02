import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/flutter.png', height: 300.0, width: 300.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Weekly Series',
                style: TextStyle(fontSize: 80.0),
              ),
              const SizedBox(height: 40.0),
              Text(
                '"From the basics to advanced."',
                style: TextStyle(fontSize: 53.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
