import 'package:cashier_store/core/theme/custom_themes/elevated_button_theme.dart';
import 'package:cashier_store/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class WAppTheme {
  WAppTheme._();

  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: WTextTheme.lightTheme,
    elevatedButtonTheme: WElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: WTextTheme.darkTheme,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
