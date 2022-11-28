import 'package:flutter/material.dart';
import 'package:flutter_devtools/common/button/x_button.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import '../../scaffold_story.dart';

class ButtonStory extends ScaffoldStory {
  ButtonStory._({
    required super.name,
    required super.body,
  });

  factory ButtonStory() {
    return ButtonStory._(
      name: 'Components/Buttons',
      body: (context) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              XButton(
                state: context.knobs.options(
                  label: 'State',
                  initial: XButtonState.ENABLED,
                  options: XButtonState.values.map((e) => Option(label: e.name, value: e)).toList(),
                ),
                onPressed: () => {},
                child: Text(
                  context.knobs.text(label: 'Label', initial: 'My Button'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
