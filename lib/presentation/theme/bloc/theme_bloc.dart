import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_devtools/common/versionable_bloc/versionable_hydrated_bloc.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_events.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

export 'package:flutter_devtools/presentation/theme/bloc/theme_state.dart';

class ThemeBloc extends VersionableHydratedBloc<ThemeEvents, ThemeState> {
  ThemeBloc()
      : super(
          const ThemeState(selectedThemeMode: ThemeMode.system),
        ) {
    on<SetThemeModeEvent>(_setThemeMode);
  }

  //---------------------------------------------------------------------------
  // Events
  //---------------------------------------------------------------------------

  FutureOr<void> _setThemeMode(
    SetThemeModeEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(selectedThemeMode: event.mode));
  }

  //---------------------------------------------------------------------------
  // Hydrated Properties
  //---------------------------------------------------------------------------

  static const hydratedId = 'theme_bloc';

  @override
  int get version => 1;

  @override
  String get blocId => hydratedId;

  @override
  Map<String, dynamic> toJson(ThemeState state) => state.toJson();

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState.fromJson(json);
}
