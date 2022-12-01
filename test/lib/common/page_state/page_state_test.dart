import 'package:flutter_devtools/common/page_state/page_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageState', () {
    test('it should return each types', () {
      expect(PageState.empty().isEmpty, true);
      expect(PageState.loaded(data: []).isLoaded, true);
      expect(PageState.failure().isFailure, true);
      expect(PageState.idle().isIdle, true);
      expect(PageState.loading().isLoading, true);
    });
  });
}
