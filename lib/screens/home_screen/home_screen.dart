import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/screens/page_1/page_1.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () => Navigator.pushNamed(context, Page1.routeName),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/flutter.png',
            height: 300.0,
            width: 300.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Weekly Series',
                style: kHeadline,
              ),
              const SizedBox(height: kHeadlineSize / 2),
              Text(
                '"10 weeks. Flutter beginner to expert"',
                style: kSubHeadline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
