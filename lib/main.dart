import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/app/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await path_provider.getTemporaryDirectory(),
  );
  runApp(const App());
}
