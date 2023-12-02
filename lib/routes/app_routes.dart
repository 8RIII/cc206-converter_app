import 'package:converter/converter.dart';
import 'package:flutter/material.dart';
import 'package:converter_app/features/home_screen/home_screen.dart';
import 'package:converter_app/features/converter/converter.dart';
import 'package:converter_app/core/app_export.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String Distance = '/distance';
  static const String Speed = '/speed';
  static const String Temperature = '/temperature';
  static const String Mass = '/mass';
  static const String Time = '/time';
  static const String ElectricCurrent = '/electriccurrent';
  static const String ElectricCharge = '/electriccharge';
  static const String Area = '/area';
  static const String Volume = '/volume';
  static const String Force = '/force';
  static const String Frequency = '/frequency';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    Distance: (context) => Converter(measurement: "Distance"),
    Speed: (context) => Converter(measurement: "Speed"),
    Temperature: (context) => Converter(measurement: "Temperature"),
    Mass: (context) => Converter(measurement: "Mass"),
    Time: (context) => Converter(measurement: "Time"),
    ElectricCurrent: (context) => Converter(measurement: "ElectricCurrent"),
    ElectricCharge: (context) => Converter(measurement: "ElectricCharge"),
    Area: (context) => Converter(measurement: "Area"),
    Volume: (context) => Converter(measurement: "Volume"),
    Force: (context) => Converter(measurement: "Force"),
    Frequency: (context) => Converter(measurement: "Frequency")
  };
}
