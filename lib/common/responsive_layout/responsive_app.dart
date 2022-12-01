import 'package:flutter/material.dart';
import 'package:flutter_devtools/common/responsive_layout/device_utils.dart';

/// @Use from responsive_sizer https://github.com/CoderUni/responsive_sizer

typedef ResponsiveBuilderType = Widget Function(
  BuildContext,
  Orientation,
  ScreenType,
);

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({
    required this.builder,
    this.maxMobileWidth = 599,
    this.maxTabletWidth,
    Key? key,
  }) : super(key: key);

  /// Builds the widget whenever the orientation changes
  final ResponsiveBuilderType builder;

  /// This is the breakpoint used to determine whether the device is
  /// a mobile device or a tablet.
  ///
  /// If the `MediaQuery`'s width **in portrait mode** is less than or equal
  /// to `maxMobileWidth`, the device is in a mobile device
  final double maxMobileWidth;

  /// By default, the `ScreenType` can only be mobile or tablet. If this is set,
  /// the `ScreenType` can be desktop as well
  ///
  /// This is the breakpoint used to determine whether the device is
  /// a tablet or a desktop.
  ///
  /// If the `MediaQuery`'s width **in portrait mode** is
  /// less than or equal to `maxTabletWidth`, the device is in a tablet device
  final double? maxTabletWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {

        CurrentDevice.setScreenSize(
          constraints: constraints,
          currentOrientation: orientation,
          maxMobileWidth: maxMobileWidth,
          maxTabletWidth: maxTabletWidth,
        );

        if (constraints.maxWidth == 0 || constraints.maxHeight == 0) {
          return const SizedBox();
        }
        return builder(
          context,
          orientation,
          CurrentDevice.screenType,
        );
      });
    });
  }
}
