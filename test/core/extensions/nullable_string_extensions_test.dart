import 'package:anywhere_character_viewer/core/extensions/nullable_string_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('isBlank', () {
    expect(null.isBlank, isTrue);
    expect(''.isBlank, isTrue);
    expect('a'.isBlank, isFalse);
    expect('ab'.isBlank, isFalse);
  });

  test('isNotBlank', () {
    expect(null.isNotBlank, isFalse);
    expect(''.isNotBlank, isFalse);
    expect('a'.isNotBlank, isTrue);
    expect('ab'.isNotBlank, isTrue);
  });
}
