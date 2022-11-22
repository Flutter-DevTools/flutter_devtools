import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.g.dart';
part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({
    required ThemeMode selectedThemeMode,
  }) = _ThemeState;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}
