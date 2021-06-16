Converts enum value to String and vice versa

## Usage

A simple usage example:

```dart
import 'package:enum_class/enum_class.dart';

main() {
  // convert enum value to string
  print(TestEnum.test.enumValue);

  // convert String to enum value
  var enumClass = EnumClass(TestEnum.values);
  print(enumClass.enumFromString('test2'));
}
enum TestEnum{
  test, test2
}
```
