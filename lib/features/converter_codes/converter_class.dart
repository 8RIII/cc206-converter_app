import 'package:converter/converter.dart';

class ConvertFunct {
  num conLength(num input, String in_unit, out_unit) {
    Length initial = Length(input, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conSpeed(num input, String in_unit, out_unit) {
    Speed initial = Speed(input, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conTemperature(num input, String in_unit, out_unit) {
    Temperature initial = Temperature(input, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conMass(num input, String in_unit, out_unit) {
    Mass initial = Mass(input, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conTime(num input, String in_unit, out_unit) {
    Time initial = Time(input, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
}
