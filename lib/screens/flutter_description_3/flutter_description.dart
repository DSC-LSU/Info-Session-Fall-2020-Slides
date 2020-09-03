import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';
import 'package:info_session_fall_2020/widgets/default_screen.dart';
import 'package:info_session_fall_2020/widgets/padding_screen.dart';

class FlutterDescription extends StatefulWidget {
  static final String routeName = '/page_3';

  @override
  _FlutterDescriptionState createState() => _FlutterDescriptionState();
}

class _FlutterDescriptionState extends State<FlutterDescription> {
  int currentIteration = 0;

  @override
  Widget build(BuildContext context) {
    return PaddingScreen(
      onTap: _cycleClickEvents(),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What is Flutter?',
            style: kHeadline,
          ),
          const SizedBox(height: kDefaultMargin*3,),
          Text('Cross Platform', style: kSubHeadline,)
        ],
      ),
    );
  }

  _cycleClickEvents() {

  }
}
