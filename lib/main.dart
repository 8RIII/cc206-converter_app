import 'package:cc206_converter_app/features/distance_function.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
const MaterialApp(
      title: 'Converter App', // used by the OS task switcher
      home: SafeArea(
        child: DistanceFunction(),
      ),
    ),
  );
}

