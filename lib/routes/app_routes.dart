import 'package:flutter/material.dart';
import 'package:converter_app/features/home_screen/home_screen.dart';
import 'package:converter_app/features/distance_function/distance_function.dart';


class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String Distance = '/distance';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    Distance: (context) => DistanceFunction()
  };
}
