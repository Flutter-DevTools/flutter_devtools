import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_state.dart';
import 'package:bloc/bloc.dart';

ThemeMode get deviceBaseThemeMode =>
    SchedulerBinding.instance.window.platformBrightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(
          ThemeState(
            selectedThemeMode: deviceBaseThemeMode,
          ),
        );
}
