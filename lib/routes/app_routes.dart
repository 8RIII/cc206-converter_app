import 'package:flutter/material.dart';
import 'package:converter_app/features/home_screen/home_screen.dart';
import 'package:converter_app/features/converter/converter.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String Distance = '/distance';
  static const String Speed = '/speed';
  static const String Temperature = '/temperature';
  static const String Mass = '/mass';
  static const String Time = '/time';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    Distance: (context) => Converter(measurement: "Distance"),
    Speed: (context) => Converter(measurement: "Speed"),
    Temperature: (context) => Converter(measurement: "Temperature"),
    Mass: (context) => Converter(measurement: "Mass"),
    Time: (context) => Converter(measurement: "Time")
  };
}
