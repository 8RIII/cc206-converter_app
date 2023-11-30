import 'package:converter/converter.dart';

class ConvertFunct {
  final String measurement;
  late num Function(String, String, String) converter;
  late String ini_in_unit;
  late String ini_out_unit;
  late List<String> unit_list;

  ConvertFunct(this.measurement) {
    switch (measurement) {
      case "Distance":
        converter = conLength;
        ini_in_unit = "m";
        ini_out_unit = "km";
        unit_list = List.from(length_unit);
        break;
      case "Speed":
        converter = conSpeed;
        ini_in_unit = 'm/s';
        ini_out_unit = 'mi/h';
        unit_list = List.from(Speed_unit);
        break;
      case "Temperature":
        converter = conTemperature;
        ini_in_unit = 'C';
        ini_out_unit = 'F';
        unit_list = List.from(Temperature_unit);
        break;
      case "Mass":
        converter = conMass;
        ini_in_unit = 'kg';
        ini_out_unit = 'lb';
        unit_list = List.from(Mass_unit);
        break;
      case "Time":
        converter = conTime;
        ini_in_unit = 's';
        ini_out_unit = 'min';
        unit_list = List.from(Time_unit);
        break;
      default:
    }
  }
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

  num conLength(String input, String in_unit, String out_unit) {
    num value = num.parse(input);
    Length initial = Length(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conSpeed(String input, String in_unit, String out_unit) {
    num value = num.parse(input);
    Speed initial = Speed(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conTemperature(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Temperature initial = Temperature(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conMass(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Mass initial = Mass(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }

  num conTime(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Time initial = Time(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
}
