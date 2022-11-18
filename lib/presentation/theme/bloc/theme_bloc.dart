import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_events.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

ThemeMode get deviceBaseThemeMode =>
    SchedulerBinding.instance.window.platformBrightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;

class ThemeBloc extends HydratedBloc<ThemeEvents, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(selectedThemeMode: deviceBaseThemeMode),
        ) {
    on<ToggleThemeModeEvent>(_toggleThemeMode);
    on<SetThemeModeEvent>(_setThemeMode);
  }

  FutureOr<void> _toggleThemeMode(
    ToggleThemeModeEvent _,
    Emitter<ThemeState> emit,
  ) {
    if (state.selectedThemeMode == ThemeMode.dark) {
      emit(state.copyWith(selectedThemeMode: ThemeMode.light));
    } else {
      emit(state.copyWith(selectedThemeMode: ThemeMode.dark));
    }
  }

  FutureOr<void> _setThemeMode(
    SetThemeModeEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(selectedThemeMode: event.mode));
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) => state.toJson();

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState.fromJson(json);
}
