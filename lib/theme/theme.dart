import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart';

ThemeData appThemeData = ThemeData(
  useMaterial3: true, // Enables Material 3 design
  appBarTheme: const AppBarTheme(
    color: Styles.primary,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Styles.secondary),
    titleTextStyle: TextStyle(
      fontFamily: Styles.fontFamilyNormal,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Styles.secondary,
      letterSpacing: 0.15,
    ),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Styles.primary,
    secondary: Styles.secondary,
    surface: Styles.white,
    error: Styles.error,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Styles.white,
      backgroundColor: Styles.secondary,
      shape: const RoundedRectangleBorder(
        borderRadius: Styles.mainBorderRadius,
        side: BorderSide(color: Styles.secondary),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: Styles.mainHorizontalPadding,
      vertical: Styles.mainVerticalPadding,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: Styles.mainBorderRadius,
      borderSide: BorderSide(
        color: Styles.secondary,
        width: 1.0,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: Styles.mainBorderRadius,
      borderSide: BorderSide(
        color: Styles.primary,
        width: 1.0,
      ),
    ),
    labelStyle: TextStyle(
      fontFamily: Styles.fontFamilyNormal,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Styles.primary,
    ),
    hintStyle: TextStyle(
      fontFamily: Styles.fontFamilyNormal,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Styles.grey,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Styles.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      textStyle: const TextStyle(
        fontFamily: Styles.fontFamilyNormal,
      ),
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Styles.secondary,
    selectionHandleColor: Styles.secondary,
    selectionColor: Styles.secondary.withOpacity(0.5),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 96.0,
        fontWeight: FontWeight.w300,
        color: Styles.primary,
        letterSpacing: -1.5),
    displayMedium: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 60.0,
        fontWeight: FontWeight.w300,
        color: Styles.primary,
        letterSpacing: -0.5),
    displaySmall: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 48.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.0),
    headlineLarge: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 34.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.25),
    headlineMedium: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: Styles.primary,
        letterSpacing: 0.0),
    headlineSmall: TextStyle(
        fontFamily: Styles.fontFamilyTitles,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Styles.primary,
        letterSpacing: 0.15),
    titleMedium: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Styles.white,
        letterSpacing: 0.15),
    titleSmall: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: Styles.primary,
        letterSpacing: 0.1),
    bodyLarge: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.5),
    bodyMedium: TextStyle(
      fontFamily: Styles.fontFamilyNormal,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Styles.primary,
      letterSpacing: 0.25,
    ),
    labelLarge: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Styles.primary,
        letterSpacing: 1.25),
    bodySmall: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.4),
    labelSmall: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 1.5),
  ),
);

// Converts a [color] to a MaterialColor.
MaterialColor createMaterialColor(Color color) {
  int r = color.red, g = color.green, b = color.blue;
  return MaterialColor(
    color.value,
    <int, Color>{
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    },
  );
}
