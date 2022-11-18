import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/exceptions/default_color_exception.dart';

abstract class ShimmerColorsInterface {
  Color get base => throw DefaultColorException();

  Color get highlight => throw DefaultColorException();
}
