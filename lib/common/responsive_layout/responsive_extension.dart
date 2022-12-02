import 'package:flutter/material.dart';

extension ResponsiveExtension on BuildContext {
  Orientation get orientation {
    final size = MediaQuery.of(this).size;
    return size.width > size.height
        ? Orientation.landscape
        : Orientation.portrait;
  }

  T whenSize<T>({
    required T Function() sm,
    required T Function() md,
    required T Function() lg,
    required T Function() xl,
    required T Function() xl2,
  }) {
    final size = MediaQuery.of(this).size;
    final width = size.width;
    if (width < 640) {
      return sm();
    }
    if (width < 768) {
      return md();
    }
    if (width < 1024) {
      return lg();
    }
    if (width < 1280) {
      return xl();
    }
    // width < 1536
    return xl2();
  }

  T maybeWhenSize<T>({
    required T Function() orElse,
    T Function()? sm,
    T Function()? md,
    T Function()? lg,
    T Function()? xl,
    T Function()? xl2,
  }) {
    final size = MediaQuery.of(this).size;
    final width = size.width;

    if (width < 640) {
      return sm != null ? sm() : orElse();
    }
    if (width < 768) {
      return md != null ? md() : orElse();
    }
    if (width < 1024) {
      return lg != null ? lg() : orElse();
    }
    if (width < 1280) {
      return xl != null ? xl() : orElse();
    }
    // width < 1536
    return xl2 != null ? xl2() : orElse();
  }
}
