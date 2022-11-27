import 'package:flutter/material.dart';
import 'package:flutter_devtools/common/responsive_layout/device_utils.dart';
import 'package:flutter_devtools/common/responsive_layout/responsive_app.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ResponsiveAppStory extends Story {
  ResponsiveAppStory()
      : super(
          name: 'Responsive App',
          builder: (context) {
            return ResponsiveApp(
              builder: (
                context,
                orientation,
                type,
              ) {
                return SafeArea(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Device Type : ${CurrentDevice.deviceType}'),
                        Text('Screen Type : ${type.name}'),
                        Text('Orientation : ${orientation.name}'),
                        Text('Constrains : Height = ${CurrentDevice.height} / Width = ${CurrentDevice.width}'),
                        Text('Constrains : AspectRatio = ${CurrentDevice.aspectRatio}'),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
}
