import 'package:flutter/material.dart';

final _lightColorScheme = ColorScheme.fromSeed(seedColor: Colors.purple);
final _darkColorScheme =
    ColorScheme.fromSeed(seedColor: Colors.purple, brightness: Brightness.dark);

final ThemeData lightTheme =
    ThemeData.from(colorScheme: _lightColorScheme).copyWith(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: _lightColorScheme.primary,
    unselectedItemColor: _lightColorScheme.primary.withOpacity(.3),
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
  ),
);

final ThemeData darkTheme =
    ThemeData.from(colorScheme: _darkColorScheme).copyWith(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: _darkColorScheme.primary,
    unselectedItemColor: _darkColorScheme.primary.withOpacity(.3),
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
  ),
);
