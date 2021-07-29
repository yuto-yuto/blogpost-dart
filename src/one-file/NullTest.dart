class NullTest {
  int? _maybeInt;

  void execute() {
    print("--NullTest--");
    final result = _func(11);
    print("_func(11): $result");
    print("maybeInt: $maybeInt");
  }

  int _func(int? num) {
    if (num != null) {
      return num;
    }
    return 0;
  }

  int get maybeInt {
    if (_maybeInt != null) {
      // return _maybeInt; // error
      return _maybeInt!;
    }
    return 0;
  }

  int get maybeInt2 {
    final temp = _maybeInt;
    if (temp != null) {
      return temp;
    }
    return 0;
  }

  int get maybeInt3 {
    return _maybeInt ?? 0;
  }
}
