import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// @Use from responsive_sizer https://github.com/CoderUni/responsive_sizer

/// Type of Device
///
/// This can be android, ios, fuchsia, web, or desktop (windows, mac, linux)
enum DeviceType { android, ios, fuchsia, web, windows, mac, linux }

/// Type of Screen
///
/// This can either be mobile or tablet
enum ScreenType { mobile, tablet, desktop }

abstract class CurrentDevice {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  static late DeviceType deviceType;

  /// Type of Screen
  static late ScreenType screenType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  /// Device's Aspect Ratio
  static late double aspectRatio;

  /// Device's Pixel Ratio
  static late double pixelRatio;

  /// Sets the Screen's size and Device's `Orientation`,
  /// `BoxConstraints`, `Height`, and `Width`
  static void setScreenSize({
    required BoxConstraints constraints,
    required Orientation currentOrientation,
    required double maxMobileWidth,
    double? maxTabletWidth,
  }) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    width = boxConstraints.maxWidth;
    height = boxConstraints.maxHeight;

    // Sets aspect and pixel ratio
    aspectRatio = constraints.constrainDimensions(width, height).aspectRatio;
    pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;

    // Sets DeviceType
    if (kIsWeb) {
      deviceType = DeviceType.web;
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          deviceType = DeviceType.android;
          break;
        case TargetPlatform.iOS:
          deviceType = DeviceType.ios;
          break;
        case TargetPlatform.windows:
          deviceType = DeviceType.windows;
          break;
        case TargetPlatform.macOS:
          deviceType = DeviceType.mac;
          break;
        case TargetPlatform.linux:
          deviceType = DeviceType.linux;
          break;
        case TargetPlatform.fuchsia:
          deviceType = DeviceType.fuchsia;
          break;
      }
    }

    // Sets ScreenType
    if ((orientation == Orientation.portrait && width <= maxMobileWidth) ||
        (orientation == Orientation.landscape && height <= maxMobileWidth)) {
      screenType = ScreenType.mobile;
    } else if (maxTabletWidth == null ||
        (orientation == Orientation.portrait && width <= maxTabletWidth) ||
        (orientation == Orientation.landscape && height <= maxTabletWidth)) {
      screenType = ScreenType.tablet;
    } else {
      screenType = ScreenType.desktop;
    }
  }

  static Widget map({
    required Widget Function() sm,
    required Widget Function() md,
    required Widget Function() lg,
    required Widget Function() xl,
    required Widget Function() xl2,
  }) {
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

  static Widget maybeMap({
    required Widget Function() orElse,
    Widget Function()? sm,
    Widget Function()? md,
    Widget Function()? lg,
    Widget Function()? xl,
    Widget Function()? xl2,
  }) {
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
