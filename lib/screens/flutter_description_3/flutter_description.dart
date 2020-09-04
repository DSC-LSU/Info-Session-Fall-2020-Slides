import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/screens/flutter_description_4/flutter_description_1.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';
import 'package:info_session_fall_2020/widgets/padding_screen.dart';

class FlutterDescription extends StatefulWidget {
  static final String routeName = '/flutter_description';

  @override
  _FlutterDescriptionState createState() => _FlutterDescriptionState();
}

class _FlutterDescriptionState extends State<FlutterDescription> {
  int currentIteration = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () => Navigator.pushNamed(context, FlutterDescription1.routeName),
      child: Center(
        child: Text(
          'What is Flutter?',
          style: kHeadline,
        ),
      ),
    );
  }
}
