import 'package:flutter_devtools/common/versionable_bloc/versionable_hydrated_bloc_mixin.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class VersionableHydratedCubit<T> extends Cubit<T> with HydratedMixin, VersionableHydratedBlocMixin<T> {
  VersionableHydratedCubit(T state) : super(state);
}
