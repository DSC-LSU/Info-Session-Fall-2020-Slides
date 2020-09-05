import 'package:flutter/material.dart';

import '../../contants.dart';
import '../../widgets/default_screen.dart';
import '../../widgets/default_screen_tile.dart';
import '../../widgets/reactive_container.dart';

class AboutUsScreen extends StatelessWidget {
  static final String routeName = '/about_us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultScreen(
        child: ReactiveContainer(
          child: Column(
            children: [
              Image.network(
                kImages['vision'],
                height: kDefaultTileHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              DefaultScreenTile(
                title: 'Our Vision',
                children: [
                  Text(
                    'To create the most admired Prefab supply and design company to serve Canadian and American Markets',
                  ),
                ],
              ),
              const SizedBox(height: kDefaultMargin,),
              Image.network(
                kImages['mission'],
                height: kDefaultTileHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              DefaultScreenTile(
                title: 'Our Mission',
                children: [
                  Text(
                    'We seek to realize our vision by providing extraordinary value to customers by building high performance teams, work processes to far exceed their expectations of product quality ,speed and economy.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
