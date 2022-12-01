import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension WidgetTesterExtension on WidgetTester {
  Future<void> pumpWithMaterial(Widget widget) async {
    await pumpWidget(MaterialApp(home: Material(child: widget)));
  }
}
