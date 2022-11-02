import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 101, 37, 185);

  static final ThemeData ligthTheme = ThemeData(
      primaryColor: primary,

      // Appbar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      // ButtonTheme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // floatinActionButtonTheme

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)),

      // InputDecoration Theme

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
      ));
}
