extension NullableIntExtensions on int? {
  int orZero() => this ?? 0;
}

extension NullableDoubleExtensions on double? {
  double orZero() => this ?? 0.0;
}

extension NullableBooleanExtensions on bool? {
  bool orFalse() => this ?? false;
}
