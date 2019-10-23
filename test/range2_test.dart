import 'package:range2/range2.dart';
import 'package:test/test.dart';

void main() {
  test('range2', () {
    expect(range(1, 1).toList(), equals([]));
    expect(range(1, 2).toList(), equals([1]));
    expect(range(1, 3).toList(), equals([1, 2]));

    expect(range(1, 5).toList(), equals([1, 2 ,3, 4]));
    expect(range(1, 5, 2).toList(), equals([1 ,3]));
    expect(range(1, 10, 3).toList(), equals([1 ,4, 7]));

    expect(range(-5, -1).toList(), equals([-5, -4, -3, -2]));

    expect(range(-5, -10, -1).toList(), equals([-5, -6, -7, -8, -9]));
    expect(range(-5, -10, -2).toList(), equals([-5, -7, -9]));
    expect(range(-5, -10, -3).toList(), equals([-5, -8]));
  });
}
