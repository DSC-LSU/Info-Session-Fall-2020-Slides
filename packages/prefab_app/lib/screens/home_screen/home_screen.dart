import 'package:flutter/material.dart';

import '../../widgets/default_screen.dart';
import '../../widgets/reactive_container.dart';
import 'components/store_category_selector.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      child: ReactiveContainer(
        child: StoreCategorySelector(),
      ),
    );
  }
}
