part of '../app_colors.dart';

class _LightAppColors extends AppColorsInterface {
  const _LightAppColors();

  @override
  Color get background => const Color(0xFFDDDDDD);

  @override
  Color get card => throw UnimplementedError();

  @override
  ColorsVariationInterface get danger => _LightDangerColorVariations();

  @override
  ColorsVariationInterface get info => _LightInfoColorVariations();

  @override
  NeutralColorsVariationInterface get neutral => _LightNeutralColorVariations();

  @override
  ColorsVariationInterface get primary => _LightPrimaryColorVariations();

  @override
  ShimmerColorsInterface get shimmer => _LightShimmerColorVariations();

  @override
  ColorsVariationInterface get success => _LightSuccessColorVariations();

  @override
  ColorsVariationInterface get warning => _LightWarningColorVariations();
}
