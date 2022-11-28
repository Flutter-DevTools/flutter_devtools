import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/app_colors_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/variations/app_colors.dart';
import 'package:flutter_devtools/presentation/theme/dimens/dimens.dart';
import 'package:flutter_devtools/presentation/theme/extensions/material_state_property_extension.dart';

part 'button_theme.dart';
part 'card_theme.dart';

abstract class AppTheme {
  static ThemeData build({
    required AppColorsInterface appColors,
    required Brightness brightness,
  }) {
    return ThemeData(
      backgroundColor: appColors.background,
      brightness: brightness,
      drawerTheme: const DrawerThemeData(),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: appColors.neutral.v0,
      ),

      // Buttons
      elevatedButtonTheme: _buildElevatedButtonTheme(appColors: appColors),
      outlinedButtonTheme: _buildOutlinedButtonTheme(appColors: appColors),
    );
  }
}
