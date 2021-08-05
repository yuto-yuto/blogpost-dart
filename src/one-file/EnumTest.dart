class EnumTest {
  void execute() {
    print("---MyEnum---");
    print(MyEnum.hello);
    print(MyEnum.hello == "MyEnum.hello");
    print(MyEnum.hello.index);
    print(MyEnum.hello.id);
    print(MyEnum.seven.id);
    print(MyEnum.hello.toString());
    print(MyEnum.hello.toString() == "MyEnum.hello");
    print(MyEnum.hello.isEqual("hello"));
    print(MyEnum.hello.isEqual(1));
    print(MyEnum.seven);
    print(MyEnum.seven.index);
    print(MyEnum.seven.toString());

    print(MyEnum.hello.value);
    print(MyEnum.seven.value);

    print(MyEnum.hello.isEqual("MyEnum.hello"));
    print(MyEnum.hello.isEqual("hello"));
    print(MyEnum.hello.isEqual("hello1"));
    print(MyEnum.hello.isEqual(1));
    print(MyEnum.hello.isEqual(2));
    print("---MyEnum1---");
    print(MyEnum1.hello);
    print(MyEnum1.seven);
    print("---MyEnum2---");
    print(MyEnum2.hello);
    print(MyEnum2.seven);
    print("---Enum like by Map---");
    print(mapValues["hello"]);
    print(mapValues["seven"]);
    print(mapValues["undefined"]);
    print(mapValues["undefined"] ?? "");
  }
}

enum MyEnum {
  hello,
  seven,
}

extension MyEnumExtension on MyEnum {
  int get id {
    switch (this) {
      case MyEnum.hello:
        return 1;
      case MyEnum.seven:
        return 7;
      default:
        return -1;
    }
  }

  String get value {
    switch (this) {
      case MyEnum.hello:
        return "hello";
      case MyEnum.seven:
        return "seven";
      default:
        return "";
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.id == value;
    } else {
      return false;
    }
  }
}

class MyEnum1 {
  static String get hello => "Hello";
  static int get seven => 7;
}

abstract class MyEnum2 {
  static String hello = "Hello";
  static int seven = 7;
}

Map<String, dynamic> mapValues = {
  "hello": "hello",
  "seven": 7,
};
