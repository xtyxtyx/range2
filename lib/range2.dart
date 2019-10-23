/// Python-like range() function implementation.
library range2;

/// Exception that [range] throws.
class RangeException {
  RangeException(this.msg);

  RangeException.zeroStep() : msg = 'range step must not be zero';

  final String msg;

  @override
  String toString() {
    if (msg != null) {
      return 'RangeException: $msg';
    }
    return 'RangeException';
  }
}

/// [range] returns a sequence of integer, starting from [start],
/// increments by [step] and ends at [end]
///
/// example:
/// ```dart
/// range(1, 5) // [1, 2, 3, 4]
/// range(-5, -1) // [-5, -4, -3, -2]
/// range(1, 10, 3) // [1, 4, 7]
/// ```
Iterable<int> range(int start, int stop, [int step = 1]) sync* {
  if (step == 0) {
    throw RangeException.zeroStep();
  }

  int current = start;

  if (step > 0) {
    while (current < stop) {
      yield current;
      current += step;
    }
  } else {
    while (current > stop) {
      yield current;
      current += step;
    }
  }
}
