part of 'app_theme.dart';

ElevatedButtonThemeData _buildElevatedButtonTheme({
  required AppColorsInterface appColors,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: appColors.primary.v100.materialPropertyBuilder(
        disabled: appColors.neutral.v40,
      ),
      elevation: (0.0).mspAll(),
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.spacing20,
        horizontal: Dimens.spacing24,
      ).mspAll(),
      foregroundColor: pureColors.neutral.v0.mspAll(),
      animationDuration: kThemeAnimationDuration,
      overlayColor: appColors.primary.v120.mspAll(),
      shape: RoundedRectangleBorder(borderRadius: Dimens.borderRadius8).mspAll(),
    ),
  );
}

OutlinedButtonThemeData _buildOutlinedButtonTheme({
  required AppColorsInterface appColors,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: appColors.primary.v100.materialPropertyBuilder(
        pressed: appColors.primary.v100,
        disabled: appColors.neutral.v30,
      ),
      foregroundColor: pureColors.neutral.v0.mspAll(),
      animationDuration: Duration.zero,
    ),
  );
}
