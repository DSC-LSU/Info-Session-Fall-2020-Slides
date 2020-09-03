import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/screens/page_1/components/member_tile.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';

class Page1 extends StatelessWidget {
  static final String routeName = '/page_1';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [MemberTile(), MemberTile(), MemberTile()],
      ),
    );
  }
}
