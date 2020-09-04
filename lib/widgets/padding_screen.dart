import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';

import 'package:info_session_fall_2020/widgets/default_screen.dart';

class PaddingScreen extends StatelessWidget {
  final Widget child;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Function onTap;

  const PaddingScreen({
    this.child,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      onTap: () => onTap,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultMargin * 2),
        child: child,
      ),
    );
  }
}
