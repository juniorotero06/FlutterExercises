import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;
  static final ThemeData lightTheme =
      ThemeData.light().copyWith(appBarTheme: const AppBarTheme(color: primary)
          //
          );
}
