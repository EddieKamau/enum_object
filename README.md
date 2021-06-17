Converts enum value to String and vice versa

## Usage

A simple usage example:

```dart
import 'package:enum_object/enum_object.dart';

main() {
  // convert enum value to string
  print(TestEnum.test.enumValue);

  // convert String to enum value
  var enumObject = EnumObject<TestEnum>(TestEnum.values);
  print(enumObject.enumFromString('test2'));
}
enum TestEnum{
  test, test2
}
```
