import 'package:flutter/material.dart';

class ScreenBreakPointUtil {
  ScreenBreakPointUtil._();

  static const LARGE_SCREEN = 1366;
  static const MEDIUM_SCREEN = 768;
  static const SMALL_SCREEN = 360;

  static bool useSmall(Size size) => size.width <= MEDIUM_SCREEN;

  static bool useMedium(Size size) =>
      size.width >= MEDIUM_SCREEN && size.width <= LARGE_SCREEN;

  static bool useLarge(Size size) => size.width >= LARGE_SCREEN;
}
