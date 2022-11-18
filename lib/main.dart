import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/app/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await path_provider.getApplicationDocumentsDirectory(),
  );
  runApp(const App());
}
