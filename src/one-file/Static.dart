class _Normal {
  final int num;
  _Normal(this.num) {
    print("Normal($num)");
  }
  @override
  String toString() {
    return "instance of _Normal($num)";
  }
}

class MyStatic {
  static final instance1 = _Normal(1);
  final instance2 = _Normal(2);
  late final _Normal instance3;
  late final _Normal instance4 = _Normal(4);
  MyStatic(int num) {
    print("MyStatic($num)");
    instance3 = _Normal(3);
  }
  execute() {
    print("--- execute start ---");
    print(instance1.toString());
    print(instance2.toString());
    print(instance3.toString());
    print(instance4.toString());
    print("--- execute end ---");
  }
}

class ExtendedMyStatic extends MyStatic {
  final _Normal normal90;
  final _Normal normal91 = _Normal(91);
  late final _Normal normal92;
  ExtendedMyStatic(int num)
      : normal90 = _Normal(90),
        super(num) {
    print("ExtendedMyStatic($num)");
    normal92 = _Normal(92);
  }
}
