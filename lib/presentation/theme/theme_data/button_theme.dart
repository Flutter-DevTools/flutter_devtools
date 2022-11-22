part of 'app_theme.dart';

ElevatedButtonThemeData _buildElevatedButtonTheme({
  required AppColorsInterface appColors,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: appColors.primary.v100.materialPropertyBuilder(
        pressed: appColors.primary.v100,
        disabled: appColors.neutral.v30,
      ),
      elevation: 0.mspAll(),
      foregroundColor: pureColors.neutral.v0.mspAll(),
      animationDuration: kThemeAnimationDuration,
      overlayColor: appColors.primary.v60.withOpacity(0.2).mspAll(),
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
