import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          centerTitle: true
        )
      );
}
