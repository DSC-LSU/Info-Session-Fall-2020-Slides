import 'package:flutter/material.dart';

import 'package:info_session_fall_2020/widgets/default_screen.dart';

class Page2 extends StatelessWidget {
  static final String routeName = '/page_2';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _GifImage(
            assetImagePath: 'assets/images/image1.gif',
          ),
          _GifImage(
            assetImagePath: 'assets/images/image2.gif',
            width: 400.0,
          ),
          _GifImage(
            assetImagePath: 'assets/images/image3.gif',
          ),
          _GifImage(
            assetImagePath: 'assets/images/image4.png',
          ),
        ],
      ),
    );
  }
}

class _GifImage extends StatelessWidget {
  final String assetImagePath;
  double height;
  double width;

  _GifImage({this.assetImagePath, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetImagePath,
      width: width ?? 360.0,
      height: height ?? 642.0,
      fit: BoxFit.cover,
    );
  }
}
