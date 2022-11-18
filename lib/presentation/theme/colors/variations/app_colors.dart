import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter_devtools/presentation/theme/colors/exceptions/default_color_exception.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/app_colors_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/shimmer_colors_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/neutral_colors_variation_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/colors_variation_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'light/app_colors.dart';
part 'light/neutral_color_variations.dart';
part 'light/primary_color_variations.dart';
part 'light/info_color_variations.dart';
part 'light/danger_color_variations.dart';
part 'light/success_color_variations.dart';
part 'light/warning_color_variations.dart';
part 'light/shimmer_color_variations.dart';

part 'dark/app_colors.dart';
part 'dark/neutral_color_variations.dart';
part 'dark/primary_color_variations.dart';
part 'dark/shimmer_color_variations.dart';

const _darkAppColors = _DarkAppColors();
const _lightAppColors = _LightAppColors();

const pureColors = _lightAppColors;

final colors =
    Modular.get<ThemeBloc>().state.selectedThemeMode == ThemeMode.dark
        ? _darkAppColors
        : _lightAppColors;
