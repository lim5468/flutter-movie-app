import 'package:flutter/material.dart';

class FocusHelper {
  static void clearFocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
