import 'package:flutter/material.dart';

import '../../../contants.dart';
import '../../../widgets/image_text_tile.dart';
import '../../automation_screen/automation_screen.dart';
import '../../components_screen/components_screen.dart';
import '../../prefabs_screen/prefabs_screen.dart';
import '../../specialized_screen/specialized_screen.dart';

class StoreCategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ImageTextTile(
                  height: kDefaultTileHeight,
                  onTap: () =>
                      Navigator.pushNamed(context, PrefabsScreen.routeName),
                  name: 'Modular Prefab Housing Units',
                  imageUrl: kImages['prefab'],
                ),
              ),
              const SizedBox(
                width: kDefaultMargin,
              ),
              Expanded(
                child: ImageTextTile(
                  height: kDefaultTileHeight,
                  onTap: () =>
                      Navigator.pushNamed(context, AutomationScreen.routeName),
                  name: 'Machine Automation Products',
                  imageUrl: kImages['automation'],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ImageTextTile(
                  height: kDefaultTileHeight,
                  onTap: () =>
                      Navigator.pushNamed(context, SpecializedScreen.routeName),
                  name: 'Specialized Design Services',
                  imageUrl: kImages['specialized'],
                ),
              ),
              const SizedBox(
                width: kDefaultMargin,
              ),
              Expanded(
                child: ImageTextTile(
                  height: kDefaultTileHeight,
                  onTap: () =>
                      Navigator.pushNamed(context, ComponentsScreen.routeName),
                  name: 'Online Prefab Consumables Store',
                  imageUrl: kImages['consumables'],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
