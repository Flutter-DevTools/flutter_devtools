import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

typedef SimplePageState<T> = PageState<T, void, void, void, dynamic>;

/// A kind of PageState where you already have a previous data, before loading the page
typedef HydratedPageState<T> = PageState<T, void, T, T, dynamic>;

@freezed
class PageState<T, Tidle, Tloading, Tempty, Tfailure> with _$PageState {
  const PageState._();

  factory PageState.idle([Tidle? data]) = _PageStateIdle;

  factory PageState.loading([Tloading? data]) = _PageStateLoading;

  factory PageState.loaded({required T data}) = _PageStateLoaded;

  factory PageState.empty({Tempty? data}) = _PageStateEmpty;

  factory PageState.failure([Tfailure? data]) = _PageStateFailure;

  bool get isIdle => this is _PageStateIdle;

  bool get isLoading => this is _PageStateLoading;

  bool get isLoaded => this is _PageStateLoaded;

  bool get isEmpty => this is _PageStateEmpty;

  bool get isFailure => this is _PageStateFailure;
}
