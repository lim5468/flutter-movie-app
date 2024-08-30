import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  searchBarTheme: SearchBarThemeData(
    elevation: WidgetStateProperty.all(0),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: _lightColorScheme.brightness,
      statusBarIconBrightness: _lightColorScheme.brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
    ),
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
  searchBarTheme: SearchBarThemeData(
    elevation: WidgetStateProperty.all(0),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: _darkColorScheme.brightness,
      statusBarIconBrightness: _darkColorScheme.brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
    ),
  ),
);
