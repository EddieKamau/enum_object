import 'package:enum_object/enum_object.dart';
import 'package:test/test.dart';

void main() {
  group('enums tests', () {

    var testEnum = TestEnum.test2;
    

    test('Tests if it converts enum value to string', () {
      expect(testEnum.enumValue, 'test2');
    });

    test('Tests if it converts String to enum', () {
      var enumObject = EnumObject<TestEnum>(TestEnum.values);
      expect(enumObject.enumFromString('test2'), TestEnum.test2);
    });

    test('Tests if it converts invalid String to enum (null)', () {
      var enumObject = EnumObject<TestEnum>(TestEnum.values);
      expect(enumObject.enumFromString('invalid'), null);
    });
    
  });
}

enum TestEnum{
  test, test2
}
