import 'package:flutter/material.dart';
import 'package:flutter_devtools/common/button/x_button.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/widget_tester_extension.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('XButton', () {
    testWidgets('Button has to display text and enabled', (widgetTester) async {
      await widgetTester.pumpWithMaterial(XButton(
        state: XButtonState.ENABLED,
        child: const Text('My button'),
        onPressed: () => {},
      ));

      final button = widgetTester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.enabled, true);

      final opacity = widgetTester.widget<Opacity>(find.byType(Opacity));
      expect(opacity.opacity, 1.0);
    });
    testWidgets('Button has to display loader', (widgetTester) async {
      await widgetTester.pumpWithMaterial(XButton(
        state: XButtonState.LOADING,
        child: const Text('My button'),
        onPressed: () => {},
      ));

      final button = widgetTester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.enabled, true);

      final loader = find.byType(CircularProgressIndicator);
      expect(loader, findsOneWidget);

      final opacity = widgetTester.widget<Opacity>(find.byType(Opacity));
      expect(opacity.opacity, 0.0);
    });

    testWidgets('Button has to be disabled', (widgetTester) async {
      await widgetTester.pumpWithMaterial(XButton(
        state: XButtonState.DISABLED,
        child: const Text('My button'),
        onPressed: () => {},
      ));

      final button = widgetTester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.enabled, false);

      final text = find.text('My button');
      expect(text, findsOneWidget);
    });
  });
}
