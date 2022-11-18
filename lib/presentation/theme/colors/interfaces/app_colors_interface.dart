import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/colors_variation_interface.dart';
import 'package:flutter_devtools/presentation/theme/colors/interfaces/shimmer_colors_interface.dart';

abstract class AppColorsInterface {
  static const black = Colors.black;
  static const white = Colors.white;
  static const transparent = Colors.transparent;

  Color get background;

  Color get card;

  ShimmerColorsInterface get shimmer;

  ColorsVariationInterface get primary;

  ColorsVariationInterface get neutral;

  ColorsVariationInterface get success;

  ColorsVariationInterface get info;

  ColorsVariationInterface get warning;

  ColorsVariationInterface get danger;

  ColorsVariationInterface get text;
}
