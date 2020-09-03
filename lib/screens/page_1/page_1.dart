import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/screens/page_1/components/member_tile.dart';
import 'package:info_session_fall_2020/screens/page_2/page_2.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';

class Page1 extends StatelessWidget {
  static final String routeName = '/page_1';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () => Navigator.pushNamed(context, Page2.routeName),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MemberTile(
            imageAssetPath: kImages['rohan'],
            title: 'Rohan Kadkol',
            subtitle: 'VP & Flutter Lead\n"computer Science and improv"',
          ),
          MemberTile(
            imageAssetPath: kImages['ian'],
            title: 'Ian Nezat',
            subtitle: 'Core Team\n"He stopped going to the gym."',
          ),
          MemberTile(
            imageAssetPath: kImages['haron'],
            title: 'Haron Temam',
            subtitle: 'Core Team\n"I really like turtles 🐢"',
          )
        ],
      ),
    );
  }
}
