import 'package:flutter/material.dart';
import '../../widgets/default_screen.dart';
import '../../widgets/default_screen_tile.dart';
import '../../widgets/reactive_container.dart';

class ContactUsScreen extends StatelessWidget {
  static final String routeName = '/contact_us';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: ReactiveContainer(
        child: DefaultScreenTile(
            title: 'Contact Us',
            children: [Text('Contact information will be displayed here.')]),
      ),
    );
  }
}
