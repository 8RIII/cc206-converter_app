import 'package:converter_app/features/components/calculator_buttons.dart';
import 'package:converter_app/features/converter_codes/converter_class.dart';
import 'package:converter_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CalculatorKeypad extends StatelessWidget {
  final Function(String) passInput;
  final ConvertFunct CF = ConvertFunct();

  CalculatorKeypad({required this.passInput});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(231, 236, 239, 1),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CalculatorButton(
                        "7",
                        onPressed: () {
                          passInput("8");
                        },
                      ),
                      CalculatorButton(
                        "8",
                        onPressed: () {
                          passInput("8");
                        },
                      ),
                      CalculatorButton(
                        "9",
                        onPressed: () {
                          passInput("9");
                        },
                      ),
                      CalculatorIconButton(
                        Icons.backspace,
                        onPressed: () {
                          passInput("B");
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalculatorButton(
                        "4",
                        onPressed: () {
                          passInput("4");
                        },
                      ),
                      CalculatorButton(
                        "5",
                        onPressed: () {
                          passInput("5");
                        },
                      ),
                      CalculatorButton(
                        "6",
                        onPressed: () {
                          passInput("6");
                        },
                      ),
                      CalculatorIconButton(
                        Icons.undo,
                        onPressed: () {
                          passInput("U");
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalculatorButton(
                        "1",
                        onPressed: () {
                          passInput("1");
                        },
                      ),
                      CalculatorButton(
                        "2",
                        onPressed: () {
                          passInput("2");
                        },
                      ),
                      CalculatorButton(
                        "3",
                        onPressed: () {
                          passInput("3");
                        },
                      ),
                      CalculatorIconButton(
                        Icons.swap_horiz,
                        onPressed: () {
                          passInput("S");
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalculatorButton(
                        ".",
                        onPressed: () {
                          passInput(".");
                        },
                      ),
                      CalculatorButton(
                        "0",
                        onPressed: () {
                          passInput("0");
                        },
                      ),
                      CalculatorButton(
                        "C",
                        onPressed: () {
                          passInput("C");
                        },
                      ),
                      CalculatorButton(
                        "=",
                        onPressed: () {
                          passInput("=");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
