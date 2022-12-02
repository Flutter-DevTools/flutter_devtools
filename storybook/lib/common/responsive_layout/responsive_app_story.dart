import 'package:flutter/material.dart';
// import 'package:flutter_devtools/common/responsive_layout/device_utils.dart';
// import 'package:flutter_devtools/common/responsive_layout/responsive_app.dart';

import '../../scaffold_story.dart';

class ResponsiveAppStory extends ScaffoldStory {
  ResponsiveAppStory()
      : super(
          name: 'Responsive App',
          body: (context) {
            return const SizedBox();
            // return ResponsiveApp(
            //   builder: (
            //     context,
            //     orientation,
            //   ) {
            //     final size = CurrentDevice.to.when(
            //       sm: () => 'sm',
            //       md: () => 'md',
            //       lg: () => 'lg',
            //       xl: () => 'xl',
            //       xl2: () => 'xl2',
            //     );
            //     return SafeArea(
            //       child: Center(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'Device Type : ${CurrentDevice.to.deviceType}',
            //             ),
            //             Text('Orientation : ${orientation.name}'),
            //             Text(
            //               'Constrains : Height = ${CurrentDevice.to.height} / Width = ${CurrentDevice.to.width}',
            //             ),
            //             Text(
            //               'Size: $size',
            //             ),
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            // );
          },
        );
}
