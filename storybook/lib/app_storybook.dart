import 'package:flutter/material.dart';
import 'package:flutter_devtools/presentation/theme/colors/variations/app_colors.dart';
import 'package:flutter_devtools/presentation/theme/theme_data/app_theme.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'common/responsive_layout/responsive_app_story.dart';
import 'presentation/icons/ionicons_story.dart';
import 'presentation/theme/button_story.dart';

class AppStorybook extends StatelessWidget {
  const AppStorybook();

  @override
  Widget build(BuildContext context) {
    final plugins = initializePlugins(
      contentsSidePanel: true,
      knobsSidePanel: true,
      initialDeviceFrameData: DeviceFrameData(
        device: Devices.ios.iPhone13,
      ),
    );
    return Storybook(
      plugins: plugins,
      wrapperBuilder: (context, child) {
        return MaterialApp(
          theme: AppTheme.build(appColors: lightAppColors, brightness: Brightness.light),
          darkTheme: AppTheme.build(appColors: darkAppColors, brightness: Brightness.dark),
          home: child,
        );
      },
      stories: [
        ResponsiveAppStory(),
        Story(
          name: 'Widgets/Text',
          description: 'Simple text widget.',
          builder: (context) => Center(
            child: Text(
              context.knobs.text(
                label: 'Content',
                initial: 'My Text',
              ),
            ),
          ),
        ),
        IoniconsStory(),
        ButtonStory(),
      ],
    );
  }
}
