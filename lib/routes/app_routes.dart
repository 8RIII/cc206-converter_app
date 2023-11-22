import 'package:flutter/material.dart';
import 'package:converterapp/presentation/home_page_screen/home_page_screen.dart';

class AppRoutes {
  static const String homePageScreen = '/home_page_screen';

  static Map<String, WidgetBuilder> routes = {
    homePageScreen: (context) => HomePageScreen()
  };
}
