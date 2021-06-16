import 'package:enum_class/enum_class.dart';
import 'package:test/test.dart';

void main() {
  group('enums tests', () {

    var testEnum = TestEnum.test2;
    

    test('Tests if it converts enum value to string', () {
      expect(testEnum.enumValue, 'test2');
    });

    test('Tests if it converts String to enum', () {
      var enumClass = EnumClass(TestEnum.values);
      expect(enumClass.enumFromString('test2'), TestEnum.test2);
    });

    test('Tests if it converts invalid String to enum (null)', () {
      var enumClass = EnumClass(TestEnum.values);
      expect(enumClass.enumFromString('invalid'), null);
    });
    
  });
}

enum TestEnum{
  test, test2
}
