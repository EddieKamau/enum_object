/// Converts an enum value to String and vice versa
///
/// 
library enum_object;

class EnumObject{
  EnumObject(this.enumValues);
  final List enumValues;
  
  String? value(Object _v){
    return _v.enumValue;
  }
  
  /// This converts a [String] value [v] to [enum] value, 
  /// returns [null] when no enum value matches the string
  Object? enumFromString(String? v){
   Object? _enumItem;
    for(var i=0; i<enumValues.length; i++){
      final item = enumValues[i];
      if(value(item) == v){
        _enumItem = item;
        break;
      }
    }
    
    return _enumItem;
  }
  
}


/// This converts an [enum] value to [String]
/// When the [Object] passed is not enum (or doesn't have one '.') it returns its String representation
extension EnumValue on Object{
  String get enumValue{
    // ignore: unnecessary_this
    var _valString = this.toString();
    var _vList = _valString.split('.');
    return _vList.length == 2 ? _vList[1] : _valString;
  }
}