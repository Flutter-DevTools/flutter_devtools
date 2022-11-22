// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThemeState _$$_ThemeStateFromJson(Map<String, dynamic> json) =>
    _$_ThemeState(
      selectedThemeMode:
          $enumDecode(_$ThemeModeEnumMap, json['selectedThemeMode']),
    );

Map<String, dynamic> _$$_ThemeStateToJson(_$_ThemeState instance) =>
    <String, dynamic>{
      'selectedThemeMode': _$ThemeModeEnumMap[instance.selectedThemeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
