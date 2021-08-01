import 'one-file/NullTest.dart';
import 'one-file/static.dart';

void main() {
  // var instance = NullTest();
  var instance = ExtendedMyStatic(1);
  // var instance = MyStatic(1);
  instance.execute();
}
