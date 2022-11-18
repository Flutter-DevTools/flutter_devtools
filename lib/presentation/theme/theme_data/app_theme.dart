import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/app_colors_interface.dart';

abstract class AppTheme {
  static ThemeData build({
    required AppColorsInterface appColors,
    required Brightness brightness,
  }) {
    return ThemeData(
      backgroundColor: appColors.background,
      brightness: brightness,
    );
  }
}
