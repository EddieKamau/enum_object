import 'package:enum_object/enum_object.dart';

void main() {
  // convert enum value to string
  print(TestEnum.test.enumValue);

  // convert String to enum value
  var enumObject = EnumObject(TestEnum.values);
  print(enumObject.enumFromString('test2'));


}

enum TestEnum{
  test, test2
}

