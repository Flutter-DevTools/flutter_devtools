import 'package:flutter_devtools/common/versionable_bloc/versionable_hydrated_bloc_mixin.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

abstract class VersionableHydratedBloc<T, U> extends Bloc<T, U> with HydratedMixin, VersionableHydratedBlocMixin<U> {
  VersionableHydratedBloc(U state) : super(state);
}
