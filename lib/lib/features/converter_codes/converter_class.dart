import 'package:converter/converter.dart';
import 'package:converter_app/core/app_export.dart';

class ConvertFunct {
  final String measurement;
  late num Function(String, String, String) converter;
  late String ini_in_unit;
  late String ini_out_unit;
  late String icon;
  late List<String> unit_list;
  final List<String> length_unit = ['km','hm','m','dm','cm','mm','in','ft','yd','mi'];
  final List<String> Speed_unit = ['m/s', 'km/h', 'ft/s', 'mi/h', 'kn'];
  final List<String> Temperature_unit = ['K', 'C', 'F', 'R'];
  final List<String> Mass_unit = ['kg', 'hg', 'g', 'mg', 'oz', 'lb', 't'];
  final List<String> Time_unit = ['s', 'ms', 'min', 'h', 'd', 'wk', 'mo', 'y'];
  final List<String> ElectricCurrent_unit = ['A', 'mA', 'kA', 'statA', 'abA'];
  final List<String> ElectricCharge_unit = ['C', 'mC', 'µC', 'nC', 'Ah', 'mAh', 'Fr', 'abC'];
  final List<String> Area_unit = ['m2', 'dm2', 'cm2', 'hm2', 'km2', 'in2', 'ft2', 'mi2', 'ac'];
  final List<String> Volume_unit = ['l', 'ml', 'kl', 'gal', 'qt', 'pt', 'tbsp', 'tsp'];
  final List<String> Force_unit = ['N', 'dyn', 'gf', 'kgf', 'lbf', 'pdl'];
  final List<String> Frequency_unit = ['Hz', 'kHz', 'MHz', 'rad/s', 'deg/s', 'rpm'];

  late List convertion_list = [ //Title, icon, routes, units_list
    ["Length", ImageConstant.imgImage16, AppRoutes.Length, length_unit],
    ["Speed", ImageConstant.imgImage12, AppRoutes.Speed, Speed_unit],
    ["Temperature", ImageConstant.imgImage13, AppRoutes.Temperature, Temperature_unit],
    ["Mass", ImageConstant.imgImage14, AppRoutes.Mass, Mass_unit],
    ["Time", ImageConstant.imgImage17, AppRoutes.Time, Time_unit],
    ["ElectricCurrent", ImageConstant.imgImage21, AppRoutes.ElectricCurrent, ElectricCurrent_unit],
    ["ElectricCharge", ImageConstant.imgImage20, AppRoutes.ElectricCharge, ElectricCharge_unit],
    ["Area", ImageConstant.imgImage23, AppRoutes.Area, Area_unit],
    ["Volume", ImageConstant.imgImage22, AppRoutes.Volume, Volume_unit],
    ["Force", ImageConstant.imgImage19, AppRoutes.Force, Force_unit],
    ["Frequency", ImageConstant.imgImage24, AppRoutes.Frequency, Frequency_unit]
  ];

  ConvertFunct(this.measurement) {
    switch (measurement) {
      case "Length":
        converter = conLength;
        ini_in_unit = "m";
        ini_out_unit = "km";
        unit_list = List.from(length_unit);
        icon = ImageConstant.imgImage16;
        break;
      case "Speed":
        converter = conSpeed;
        ini_in_unit = 'm/s';
        ini_out_unit = 'mi/h';
        unit_list = List.from(Speed_unit);
        icon = ImageConstant.imgImage12;
        break;
      case "Temperature":
        converter = conTemperature;
        ini_in_unit = 'C';
        ini_out_unit = 'F';
        unit_list = List.from(Temperature_unit);
        icon = ImageConstant.imgImage13;
        break;
      case "Mass":
        converter = conMass;
        ini_in_unit = 'kg';
        ini_out_unit = 'lb';
        unit_list = List.from(Mass_unit);
        icon = ImageConstant.imgImage14;
        break;
      case "Time":
        converter = conTime;
        ini_in_unit = 's';
        ini_out_unit = 'min';
        unit_list = List.from(Time_unit);
        icon = ImageConstant.imgImage17;
        break;
      case "ElectricCurrent":
        converter = conElectricCurrent;
        ini_in_unit = 'A';
        ini_out_unit = 'kA';
        unit_list = List.from(ElectricCurrent_unit);
        icon = ImageConstant.imgImage21;
        break;
      case "ElectricCharge":
        converter = conElectricCharge;
        ini_in_unit = 'C';
        ini_out_unit = 'mC';
        unit_list = List.from(ElectricCharge_unit);
        icon = ImageConstant.imgImage20;
        break;
      case "Area":
        converter = conArea;
        ini_in_unit = 'm2';
        ini_out_unit = 'ft2';
        unit_list = List.from(Area_unit);
        icon = ImageConstant.imgImage23;
        break;
      case "Volume":
        converter = conVolume;
        ini_in_unit = 'l';
        ini_out_unit = 'ml';
        unit_list = List.from(Volume_unit);
        icon = ImageConstant.imgImage22;
        break;
      case "Force":
        converter = conForce;
        ini_in_unit = 'N';
        ini_out_unit = 'kgf';
        unit_list = List.from(Force_unit);
        icon = ImageConstant.imgImage19;
        break;
      case "Frequency":
        converter = conFrequency;
        ini_in_unit = 'Hz';
        ini_out_unit = 'kHz';
        unit_list = List.from(Frequency_unit);
        icon = ImageConstant.imgImage24;
        break;
      default:
    }
  }
  


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
  }//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    num conElectricCurrent(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    ElectricCurrent initial = ElectricCurrent(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
    num conElectricCharge(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    ElectricCharge initial = ElectricCharge(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
    num conArea(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Area initial = Area(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
    num conVolume(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Volume initial = Volume(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
    num conForce(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Force initial = Force(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
    num conFrequency(String input, String in_unit, out_unit) {
    num value = num.parse(input);
    Frequency initial = Frequency(value, in_unit);
    num result = initial.valueIn(out_unit);
    return result;
  }
}
