import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_events.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/hydrated_bloc/storage_mock.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late final MockStorage storage;
  setUpAll(() {
    // Hence the ThemeBloc is an HydratedBloc, we need to mock the storage
    storage = MockStorage.preFilled();

    HydratedBloc.storage = storage;
  });

  group(
    'ThemeBloc',
    () {
      group(
        'initial state',
        () {
          blocTest<ThemeBloc, ThemeState>(
            'should be ThemeMode.system if never setted before',
            build: () => ThemeBloc(),
            verify: (bloc) => expect(
              bloc.state,
              const ThemeState(
                selectedThemeMode: ThemeMode.system,
              ),
            ),
          );
          blocTest<ThemeBloc, ThemeState>(
            'should be ThemeMode.dark if storaged is ThemeMode.dark',
            setUp: () {
              when(() => storage.read(any())).thenReturn(
                const ThemeState(
                  selectedThemeMode: ThemeMode.dark,
                ).toJson(),
              );
            },
            build: () => ThemeBloc(),
            verify: (bloc) => expect(
              bloc.state,
              const ThemeState(
                selectedThemeMode: ThemeMode.dark,
              ),
            ),
          );
          blocTest<ThemeBloc, ThemeState>(
            'should be ThemeMode.light if storaged is ThemeMode.light',
            setUp: () {
              when(() => storage.read(any())).thenReturn(
                const ThemeState(
                  selectedThemeMode: ThemeMode.light,
                ).toJson(),
              );
            },
            build: () => ThemeBloc(),
            verify: (bloc) => expect(
              bloc.state,
              const ThemeState(
                selectedThemeMode: ThemeMode.light,
              ),
            ),
          );
        },
      );

      group(
        'ThemeEvents.setThemeMode',
        () {
          blocTest<ThemeBloc, ThemeState>(
            'emit ThemeMode.dark when setThemeMode(ThemeMode.dark)',
            build: () => ThemeBloc(),
            act: (bloc) =>
                bloc.add(const ThemeEvents.setThemeMode(ThemeMode.dark)),
            expect: () => [
              const ThemeState(
                selectedThemeMode: ThemeMode.dark,
              ),
            ],
          );
          blocTest<ThemeBloc, ThemeState>(
            'emit ThemeMode.light when setThemeMode(ThemeMode.light)',
            build: () => ThemeBloc(),
            act: (bloc) =>
                bloc.add(const ThemeEvents.setThemeMode(ThemeMode.light)),
            expect: () => [
              const ThemeState(
                selectedThemeMode: ThemeMode.light,
              ),
            ],
          );
          blocTest<ThemeBloc, ThemeState>(
            'emit ThemeMode.system when setThemeMode(ThemeMode.system)',
            build: () => ThemeBloc(),
            seed: () => const ThemeState(
              selectedThemeMode: ThemeMode.dark,
            ),
            act: (bloc) =>
                bloc.add(const ThemeEvents.setThemeMode(ThemeMode.system)),
            expect: () => [
              const ThemeState(
                selectedThemeMode: ThemeMode.system,
              ),
            ],
          );
        },
      );
    },
  );
}
