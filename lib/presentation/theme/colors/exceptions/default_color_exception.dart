class DefaultColorException {
  final String message =
      'This color is not implemented or do not exist. Please check the design 🥸. All variations do not exists for every colors so be carreful if you implement a new color';

  @override
  String toString() {
    return 'Exception: $message';
  }
}
