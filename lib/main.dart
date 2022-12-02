import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/app/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter_web_plugins/url_strategy.dart' as url_strategy;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  url_strategy.usePathUrlStrategy();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await path_provider.getTemporaryDirectory(),
  );
  runApp(const App());
}
