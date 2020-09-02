import 'package:flutter/material.dart';

import 'package:info_session_fall_2020/constants.dart';

class DefaultScreen extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const DefaultScreen({
    this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: [
          Container(
            height: 35.0,
            child: Row(
              children: [
                _ColoredContainer(
                  color: kGoogleYellow,
                ),
                _ColoredContainer(
                  color: kGoogleGreen,
                ),
                _ColoredContainer(
                  color: kGoogleBlue,
                ),
                _ColoredContainer(
                  color: kGoogleRed,
                ),
              ]..addAll(children ?? []),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColoredContainer extends StatelessWidget {
  final Color color;

  const _ColoredContainer({
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
