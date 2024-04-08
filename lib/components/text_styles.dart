import 'package:flutter/material.dart';

TextStyle PrimaryHeadingTextStyle() {
  return TextStyle(fontFamily: 'Poppins-bold', fontSize: 25.0);
}

TextStyle SecondaryTextGrayStyle(
    {double? fontSize, double? fontHeight, FontWeight? myFontWeight}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize ?? 15.0,
      fontWeight: myFontWeight ?? FontWeight.w500,
      color: Color(0xFF868889),
      height: fontHeight ?? null);
}

TextStyle TextBoxHintTextGrayStyle(
    {double? fontSize, FontWeight? myFontWeight}) {
  return TextStyle(
    fontFamily: "Poppins",
    fontSize: fontSize ?? 15.0,
    fontWeight: myFontWeight ?? FontWeight.w400,
  );
}

TextStyle SecondaryTextHiperLinkStyle() {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: Color(0xFF407EC7));
}

TextStyle SecondaryTextBlackStyle(
    {double? fontSize, FontWeight? myFontWeight}) {
  return TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: fontSize ?? 15.0,
      fontWeight: myFontWeight ?? FontWeight.w500);
}

TextStyle SecondaryTextWhiteStyle({double? fontSize}) {
  return TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontSize: fontSize ?? 15.0,
      fontWeight: FontWeight.w500);
}

TextStyle SecondaryTextPriceStyle(
    {double? fontSize, FontWeight? myFontWeight}) {
  return TextStyle(
      color: Color(0xFF54D17A),
      fontFamily: 'Poppins-bold',
      fontSize: fontSize ?? 15.0,
      fontWeight: myFontWeight ?? FontWeight.w500);
}

TextStyle SecondaryTextPriceStyleNormal(
    {double? fontSize, FontWeight? myFontWeight}) {
  return TextStyle(
      color: Color(0xFF54D17A),
      fontFamily: 'Poppins-bold',
      fontSize: fontSize ?? 15.0,
      fontWeight: myFontWeight ?? FontWeight.w500);
}

TextStyle SecondaryTextBlackStyleHeading({double? fontSize}) {
  return TextStyle(
    color: Color(0xFF000000),
    fontFamily: 'Poppins-bold',
    fontSize: fontSize ?? 20.0,
    fontWeight: FontWeight.w600,
  );
}

TextStyle SecondaryTextBlackStyleHeadingLight({double? fontSize}) {
  return TextStyle(
      color: Color(0xFF000000),
      fontFamily: 'Poppins',
      fontSize: fontSize ?? 20.0,
      fontWeight: FontWeight.w600);
}
