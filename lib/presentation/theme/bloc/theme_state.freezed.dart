// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  return _ThemeState.fromJson(json);
}

/// @nodoc
mixin _$ThemeState {
  ThemeMode get selectedThemeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeMode selectedThemeMode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedThemeMode = null,
  }) {
    return _then(_value.copyWith(
      selectedThemeMode: null == selectedThemeMode
          ? _value.selectedThemeMode
          : selectedThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_ThemeStateCopyWith(
          _$_ThemeState value, $Res Function(_$_ThemeState) then) =
      __$$_ThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode selectedThemeMode});
}

/// @nodoc
class __$$_ThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_ThemeState>
    implements _$$_ThemeStateCopyWith<$Res> {
  __$$_ThemeStateCopyWithImpl(
      _$_ThemeState _value, $Res Function(_$_ThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedThemeMode = null,
  }) {
    return _then(_$_ThemeState(
      selectedThemeMode: null == selectedThemeMode
          ? _value.selectedThemeMode
          : selectedThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThemeState extends _ThemeState {
  const _$_ThemeState({required this.selectedThemeMode}) : super._();

  factory _$_ThemeState.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeStateFromJson(json);

  @override
  final ThemeMode selectedThemeMode;

  @override
  String toString() {
    return 'ThemeState(selectedThemeMode: $selectedThemeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeState &&
            (identical(other.selectedThemeMode, selectedThemeMode) ||
                other.selectedThemeMode == selectedThemeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectedThemeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      __$$_ThemeStateCopyWithImpl<_$_ThemeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThemeStateToJson(
      this,
    );
  }
}

abstract class _ThemeState extends ThemeState {
  const factory _ThemeState({required final ThemeMode selectedThemeMode}) =
      _$_ThemeState;
  const _ThemeState._() : super._();

  factory _ThemeState.fromJson(Map<String, dynamic> json) =
      _$_ThemeState.fromJson;

  @override
  ThemeMode get selectedThemeMode;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
