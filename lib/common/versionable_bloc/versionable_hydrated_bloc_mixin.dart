import 'package:hydrated_bloc/hydrated_bloc.dart';

mixin VersionableHydratedBlocMixin<T> on HydratedMixin<T> {
  static const _storageKey = 'all_bloc_version';

  /// The version of the bloc represent the version of the state data model
  /// If the data model of the state change, the version should be updated
  int get version => throw 'Please specify a version number';

  /// This value should never change, if the value change the saved state will be lost
  String get blocId => throw 'Please specify a bloc id';

  @override
  void hydrate() {
    super.hydrate();

    _saveVersion();
  }

  @override
  void onChange(Change<T> change) {
    super.onChange(change);

    _saveVersion();
  }

  void _saveVersion() {
    final storage = HydratedBloc.storage;

    final allVersions = storage.read(_storageKey) ?? {};

    /// storageToken = '$storagePrefix$id'
    /// $id is used to identify multiple instances of the same bloc
    allVersions[storageToken] = version;

    storage.write(_storageKey, allVersions).then((_) => {}, onError: onError);
  }

  @override
  String get storagePrefix => blocId;
}
