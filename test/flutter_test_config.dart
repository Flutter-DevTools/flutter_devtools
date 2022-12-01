import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

// This will be applied on all tests
Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  await testMain();
}
