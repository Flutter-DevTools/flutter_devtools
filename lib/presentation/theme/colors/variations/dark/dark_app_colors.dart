part of '../app_colors.dart';

class _DarkAppColors extends _LightAppColors {
  const _DarkAppColors();

  @override
  Color get background => const Color(0xFF121212);

  @override
  Color get card => throw UnimplementedError();

  @override
  NeutralColorsVariationInterface get neutral => _DarkNeutralColorVariations();

  /*@override
  ColorsVariationInterface get primary => _DarkPrimaryColorVariations();*/

  @override
  ShimmerColorsInterface get shimmer => _DarkShimmerColorVariations();
}
