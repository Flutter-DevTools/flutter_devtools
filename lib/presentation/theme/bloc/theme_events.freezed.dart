// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvents {
  ThemeMode get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode mode)? setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? setThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetThemeModeEvent value) setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetThemeModeEvent value)? setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventsCopyWith<ThemeEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventsCopyWith<$Res> {
  factory $ThemeEventsCopyWith(
          ThemeEvents value, $Res Function(ThemeEvents) then) =
      _$ThemeEventsCopyWithImpl<$Res, ThemeEvents>;
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class _$ThemeEventsCopyWithImpl<$Res, $Val extends ThemeEvents>
    implements $ThemeEventsCopyWith<$Res> {
  _$ThemeEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetThemeModeEventCopyWith<$Res>
    implements $ThemeEventsCopyWith<$Res> {
  factory _$$SetThemeModeEventCopyWith(
          _$SetThemeModeEvent value, $Res Function(_$SetThemeModeEvent) then) =
      __$$SetThemeModeEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$SetThemeModeEventCopyWithImpl<$Res>
    extends _$ThemeEventsCopyWithImpl<$Res, _$SetThemeModeEvent>
    implements _$$SetThemeModeEventCopyWith<$Res> {
  __$$SetThemeModeEventCopyWithImpl(
      _$SetThemeModeEvent _value, $Res Function(_$SetThemeModeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$SetThemeModeEvent(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SetThemeModeEvent implements SetThemeModeEvent {
  const _$SetThemeModeEvent(this.mode);

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeEvents.setThemeMode(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetThemeModeEvent &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetThemeModeEventCopyWith<_$SetThemeModeEvent> get copyWith =>
      __$$SetThemeModeEventCopyWithImpl<_$SetThemeModeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) setThemeMode,
  }) {
    return setThemeMode(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode mode)? setThemeMode,
  }) {
    return setThemeMode?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? setThemeMode,
    required TResult orElse(),
  }) {
    if (setThemeMode != null) {
      return setThemeMode(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetThemeModeEvent value) setThemeMode,
  }) {
    return setThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetThemeModeEvent value)? setThemeMode,
  }) {
    return setThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetThemeModeEvent value)? setThemeMode,
    required TResult orElse(),
  }) {
    if (setThemeMode != null) {
      return setThemeMode(this);
    }
    return orElse();
  }
}

abstract class SetThemeModeEvent implements ThemeEvents {
  const factory SetThemeModeEvent(final ThemeMode mode) = _$SetThemeModeEvent;

  @override
  ThemeMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$SetThemeModeEventCopyWith<_$SetThemeModeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
