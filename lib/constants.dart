import 'package:flutter/material.dart';

const Curve kDefaultCurve = Curves.decelerate;
const Duration kDefaultDuration = Duration(seconds: 2);

const double kDefaultMargin = 20.0;
const double kDefaultBorderRadius = 20.0;

const double kHeadlineSize = 80.0;
// const double kTitle = 40

const Color kGoogleBlue = Color(0xFF4285F4);
const Color kGoogleRed = Color(0xFFEA4335);
const Color kGoogleYellow = Color(0xFFFBBC04);
const Color kGoogleGreen = Color(0xFF34A853);
const Color kPrimaryText = Color(0xFF282A2D);
const Color kSecondaryText = Color(0xFF747474);

const TextStyle kHeadline =
    TextStyle(fontSize: kHeadlineSize, fontWeight: FontWeight.bold);
const TextStyle kSubHeadline = TextStyle(fontSize: 2 / 3 * kHeadlineSize);
const TextStyle kSubSubHeadline =
    TextStyle(fontSize: 2 / 3 * 2 / 3 * kHeadlineSize);
const TextStyle kSubSubHeadlineOverline =
    TextStyle(fontSize: 2 / 3 * 2 / 3 * 2 / 3 * kHeadlineSize);

// const TextStyle kTitle = TextSty

const Map<String, String> kImages = {
  'rohan': 'assets/images/rohan_kadkol.jpg',
  'ian': 'assets/images/ian_nezat.png',
  'haron': 'assets/images/haron_temam.jpg'
};
