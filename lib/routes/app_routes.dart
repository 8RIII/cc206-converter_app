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

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    Distance: (context) =>
        Converter(measurement: "Distance", icon: ImageConstant.imgImage16),
    Speed: (context) => Converter(
          measurement: "Speed",
          icon: ImageConstant.imgImage12,
        ),
    Temperature: (context) =>
        Converter(measurement: "Temperature", icon: ImageConstant.imgImage13),
    Mass: (context) =>
        Converter(measurement: "Mass", icon: ImageConstant.imgImage14),
    Time: (context) =>
        Converter(measurement: "Time", icon: ImageConstant.imgImage17)
  };
}
