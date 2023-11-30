import 'package:converter/converter.dart';

class ConvertFunct {
  final List<String> length_unit = [
    'km',
    'hm',
    'm',
    'dm',
    'cm',
    'mm',
    'in',
    'ft',
    'yd',
    'mi'
  ];
  final List<String> Speed_unit = ['m/s', 'km/h', 'ft/s', 'mi/h', 'kn'];
  final List<String> Temperature_unit = ['K', 'C', 'F', 'R'];
  final List<String> Mass_unit = ['kg', 'hg', 'g', 'mg', 'oz', 'lb', 't'];
  final List<String> Time_unit = ['s', 'ms', 'min', 'h', 'd', 'wk', 'mo', 'y'];

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
