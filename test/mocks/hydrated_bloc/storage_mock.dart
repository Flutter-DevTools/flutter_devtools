import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

//ignore_for_file: no-empty-block
class MockStorage extends Mock implements Storage {
  MockStorage();

  MockStorage.preFilled({Map<String, dynamic>? readReturn}) {
    when(() => read(any())).thenReturn(readReturn ?? <String, dynamic>{});
    when(() => write(any(), any<dynamic>())).thenAnswer((_) async {});
    when(() => delete(any())).thenAnswer((_) async {});
    when(() => clear()).thenAnswer((_) async {});
  }
}
