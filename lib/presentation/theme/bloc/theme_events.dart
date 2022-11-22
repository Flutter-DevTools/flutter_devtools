import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_events.freezed.dart';

@freezed
class ThemeEvents with _$ThemeEvents {
  const factory ThemeEvents.toggleThemeMode() = ToggleThemeModeEvent;
  const factory ThemeEvents.setThemeMode(ThemeMode mode) = SetThemeModeEvent;
}
