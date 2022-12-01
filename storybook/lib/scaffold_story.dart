import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ScaffoldStory extends Story {
  ScaffoldStory({
    required String name,
    required Widget Function(BuildContext) body,
    PreferredSize? appBar,
  }) : super(
          name: name,
          builder: (context) => Scaffold(
            appBar: appBar,
            body: body(context),
          ),
        );
}
