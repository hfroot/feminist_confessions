import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  backgroundColor: Color(0xFFF5F5F3),
  primaryColor: Color(0xFFEC7201),
  accentColor: Color(0xFF00A759),
  textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFFF5F5F3),
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        color: Color(0xFF167AB8),
      ),
      bodyText1: TextStyle(
        color: Color(0xFF58474B),
        fontSize: 20,
      )
  ),
);

// helpful reference since colours are shown in Android Studio
List<Color> AllColours = [
  Color(0xFFBB3A46),
  Color(0xFFA93236),
  Color(0xFFDB465A),
  Color(0xFFF77B01),
  Color(0xFFEC7201),
  Color(0xFFF9891A),
  Color(0xFF167AB8),
  Color(0xFF296E98),
  Color(0xFF1A91C7),
  Color(0xFF8A7BBC),
  Color(0xFF8072AD),
  Color(0xFFAC94D8),
  Color(0xFF00A759),
  Color(0xFF019654),
  Color(0xFF4ACB6B),
  Color(0xFFF5F5F3),
  Color(0xFFE79096),
  Color(0xFF2F668B),
  Color(0xFF4A5567),
  Color(0xFF58474B),
];
