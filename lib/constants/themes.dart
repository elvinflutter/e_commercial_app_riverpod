import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF843667);
const kSecondaryColor = Color(0xFF022238);
const kThirdColor = Color(0xFFFFDCBC);
const kLightBackground = Color(0xFFE8F6FB);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kAppBgColor = Color(0xFFF6F6F6);

class KAppTheme {
  static const kBigTitle = TextStyle(
    color: kWhiteColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static final kBodyText = TextStyle(
    color: Colors.grey.shade400,
    fontSize: 12,
  );
  static const kHeadingOne = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const kSeeAllText = TextStyle(color: kPrimaryColor);

  static const kCardHeadingTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}
