import 'package:flutter/material.dart';

import '../../../contants.dart';
import '../../../models/pair.dart';
import '../../about_us_screen/about_us_screen.dart';
import '../../contact_us_screen/contact_us_screen.dart';
import '../home_screen.dart';

class PagesBar extends StatelessWidget {
  final List<Pair> pages = [
    Pair('Home', HomeScreen.routeName),
    Pair('About Us', AboutUsScreen.routeName),
    Pair('Contact Us', ContactUsScreen.routeName)
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: pages.map((p) => _PageButton(page: p)).toList(),
    );
  }
}

class _PageButton extends StatelessWidget {
  final Pair page;

  const _PageButton({
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      child: InkWell(
        onHover: (hover) => null,
        onTap: page.second != null
            ? () => Navigator.pushNamed(context, page.second)
            : null,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 3.0,
                color: Theme.of(context).accentColor,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
          padding: const EdgeInsets.all(kDefaultMargin / 2),
          margin: const EdgeInsets.symmetric(horizontal: kDefaultMargin / 4),
          child: Text(
            page.first,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Theme.of(context).primaryColorDark),
          ),
        ),
      ),
    );
  }
}
