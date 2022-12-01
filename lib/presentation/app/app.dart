import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devtools/common/responsive_layout/responsive_app.dart';
import 'package:flutter_devtools/presentation/app/app_module.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter_devtools/presentation/theme/colors/variations/app_colors.dart';
import 'package:flutter_devtools/presentation/theme/theme_data/app_theme.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  static final _themeBloc = ThemeBloc();

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (
        context,
        orientation,
        type,
      ) {
        return ModularApp(
          module: AppModule(themeBloc: _themeBloc),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            bloc: _themeBloc,
            builder: (context, themeState) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                restorationScopeId: 'app',
                localizationsDelegates: const [
                  // AppLocalizations.delegate,
                  // GlobalMaterialLocalizations.delegate,
                  // GlobalWidgetsLocalizations.delegate,
                  // GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''), // English, no country code
                ],
                onGenerateTitle: (context) => 'Flutter DevTools',
                theme: AppTheme.build(
                  appColors: lightAppColors,
                  brightness: Brightness.light,
                ),
                darkTheme: AppTheme.build(
                  appColors: darkAppColors,
                  brightness: Brightness.dark,
                ),
                themeMode: themeState.selectedThemeMode,
                routeInformationParser: Modular.routeInformationParser,
                routerDelegate: Modular.routerDelegate,
              );
            },
          ),
        );
      },
    );
  }
}
