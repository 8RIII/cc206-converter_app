import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final double height;
  final VoidCallback onPressed;

  CalculatorButton(this.text,
      {this.color,
      this.fontSize = 25,
      this.height = 50,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        margin: EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? const Color.fromRGBO(255, 255, 255, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.black,
              fontFamily: 'Lato',
            ),
          ),
        ),
      ),
    );
  }
}

class CalculatorIconButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double height;
  final VoidCallback onPressed;

  CalculatorIconButton(this.icon,
      {this.color, this.height = 50.0, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          height: height,
          margin: EdgeInsets.all(4.0),
          child: ElevatedButton(
            onPressed: () {
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color ?? const Color.fromRGBO(255, 255, 255, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            child: Icon(icon, size: 25, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
