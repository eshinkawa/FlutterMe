import 'package:flutter/material.dart';

ThemeData appTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
            color: Colors.white,
            fontSize: 48,
            fontFamily: "SourceSansPro",
            fontWeight: FontWeight.bold),
        display1: base.headline.copyWith(
            color: Colors.white60,
            fontSize: 24,
            fontFamily: "SourceSansPro",
            fontWeight: FontWeight.bold),
        display2: base.headline.copyWith(
          fontFamily: 'Merriweather',
          fontSize: 22.0,
          color: Colors.grey,
        ),
        caption: base.caption.copyWith(
          color: Color(0xFFCCC5AF),
        ),
        body1: base.body1.copyWith(color: Color(0xFF807A6B)));
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      //textTheme: Typography().white,
      primaryColor: Color(0xffce107c),
      //primaryColor: Color(0xff4829b2),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      accentColor: Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      buttonColor: Colors.white,
      backgroundColor: Colors.white,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      ));
}
