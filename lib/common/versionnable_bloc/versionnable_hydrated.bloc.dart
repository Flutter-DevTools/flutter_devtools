import 'package:flutter_devtools/common/versionnable_bloc/versionnable_hydrated_bloc.mixin.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class VersionnableHydratedBloc<T, U> extends Bloc<T, U>
    with HydratedMixin, VersionnableHydratedBlocMixin<U> {
  VersionnableHydratedBloc(U state) : super(state);
}
