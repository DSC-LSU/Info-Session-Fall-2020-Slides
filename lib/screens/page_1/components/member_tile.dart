import 'package:flutter/material.dart';

import 'package:info_session_fall_2020/constants.dart';

class MemberTile extends StatelessWidget {
  final String imageAssetPath;
  final String title;
  final String subtitle;

  const MemberTile({
    @required this.imageAssetPath,
    @required this.title,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
            child: Image.asset(
              imageAssetPath,
              fit: BoxFit.cover,
              width: 300.0,
              height: 500.0,
            ),
          ),
          const SizedBox(height: 48.0 / 2),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 48.0),
          ),
          const SizedBox(height: 48.0 / 2),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 48.0 * 2 / 3),
          )
        ],
      ),
    );
  }
}
