import 'package:flutter/material.dart';
import 'package:info_session_fall_2020/constants.dart';

class MemberTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
            child: Image.network(
              kImages['rohan'],
              fit: BoxFit.cover,
              width: 300.0,
              height: 500.0,
            ),
          ),
          const SizedBox(height: 48.0 / 2),
          Text(
            'Rohan Kadkol',
            style: TextStyle(fontSize: 48.0),
          ),
          const SizedBox(height: 48.0 / 2),
          Text(
            'VP & Flutter Lead',
            style: TextStyle(fontSize: 48.0 * 2 / 3),
          )
        ],
      ),
    );
  }
}
