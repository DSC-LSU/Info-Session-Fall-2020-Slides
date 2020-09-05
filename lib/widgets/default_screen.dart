import 'package:flutter/material.dart';

import 'package:info_session_fall_2020/constants.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Function onTap;

  const DefaultScreen(
      {@required this.child,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: onTap,
        child: Column(
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
                ],
              ),
            ),
            Expanded(
              child: child,
            )
          ],
        ),
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
