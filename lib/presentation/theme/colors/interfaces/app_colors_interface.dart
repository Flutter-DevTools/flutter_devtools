import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/colors_variation_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/neutral_colors_variation_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/shimmer_colors_interface.dart';

abstract class AppColorsInterface {
  const AppColorsInterface();

  Color get background;

  Color get card;

  ShimmerColorsInterface get shimmer;

  ColorsVariationInterface get primary;

  NeutralColorsVariationInterface get neutral;

  ColorsVariationInterface get success;

  ColorsVariationInterface get info;

  ColorsVariationInterface get warning;

  ColorsVariationInterface get danger;
}
