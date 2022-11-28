part of 'x_button.dart';

enum XButtonState {
  ENABLED,
  DISABLED,
  LOADING,
}

extension XButtonStateExt on XButtonState {
  bool get isLoading => this == XButtonState.LOADING;
  bool get isDisabled => this == XButtonState.DISABLED;
}
