import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'presentation/icons/ionicons_story.dart';

import 'common/responsive_layout/responsive_app_story.dart';

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
      ],
    );
  }
}
