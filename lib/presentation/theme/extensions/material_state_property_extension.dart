import 'package:flutter/material.dart';

extension MaterialStatePropertyExt on Object {
  MaterialStateProperty<T> mspAll<T>() {
    return MaterialStateProperty.all<T>(this as T);
  }

  MaterialStateProperty<T> materialPropertyBuilder<T>({
    T? pressed,
    T? disabled,
    T? hover,
  }) {
    final state = this as T;
    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return pressed ?? state;
      }
      if (states.contains(MaterialState.disabled)) {
        return disabled ?? state;
      }
      if (states.contains(MaterialState.hovered)) {
        return hover ?? state;
      }
      return state;
    });
  }
}
