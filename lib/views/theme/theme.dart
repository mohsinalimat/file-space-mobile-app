import 'package:space_client_app/views/theme/colors.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBlue,
    canvasColor: Colors.transparent,
    primarySwatch: getMaterialColor(purple),
    appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        color: Colors.transparent,
        titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
    dividerTheme: const DividerThemeData(thickness: 0.8),
    chipTheme: const ChipThemeData(
      backgroundColor: blue,
      padding: EdgeInsets.zero,
      labelStyle: TextStyle(
        fontSize: 11,
        color: grey,
        fontWeight: FontWeight.normal,
      ),
    ),
    listTileTheme: const ListTileThemeData(
      dense: true,
      minVerticalPadding: 9,
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 25),
      visualDensity: VisualDensity.compact,
    ),
    textTheme: const TextTheme(
      headline4: TextStyle(
        fontSize: 36,
        color: white,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      headline6: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      bodyText1: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: lightGrey,
      ),
      subtitle1: TextStyle(
        fontSize: 11,
        color: white,
      ),
      subtitle2: TextStyle(fontSize: 12, color: grey),
    ),
  );
}