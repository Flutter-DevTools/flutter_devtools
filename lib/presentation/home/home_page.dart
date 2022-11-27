import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_events.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('switch theme'),
          onPressed: () {
            Modular.get<ThemeBloc>().add(const ThemeEvents.toggleThemeMode());
          },
        ),
      ),
    );
  }
}
