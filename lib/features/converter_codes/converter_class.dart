import 'package:converter/converter.dart';

class ConvertFunct {
  num conLength(num input, String in_unit, out_unit) {
    Length initial = Length(input, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
}
