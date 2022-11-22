import 'package:flutter_devtools/presentation/home/home_module.dart';
import 'package:flutter_devtools/presentation/theme/bloc/theme_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class AppModule extends Module {
  AppModule({required this.themeBloc});

  final ThemeBloc themeBloc;
  @override
  List<Bind> get binds => [
        BlocBind.singleton((i) => themeBloc),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: HomeModule(),
        ),
      ];
}
