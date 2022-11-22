import 'package:flutter_devtools/common/versionnable_bloc/versionnable_hydrated_bloc_mixin.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class VersionnableHydratedCubit<T> extends Cubit<T> with HydratedMixin, VersionnableHydratedBlocMixin<T> {
  VersionnableHydratedCubit(T state) : super(state);
}
