import 'package:converter_app/features/converter_codes/converter_class.dart';
import 'package:converter_app/features/drawer/distance_func_drawer.dart';
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

class DistanceFunction extends StatefulWidget {
  const DistanceFunction({Key? key}) : super(key: key);

  @override
  _DistanceFunctionState createState() => _DistanceFunctionState();
}

class _DistanceFunctionState extends State<DistanceFunction> {
  String selectedUnit = "Meter";
  String input_value = '';
  void equals() {
    print('equals');
  }

  void clear() {
    print('clear');
    setState(() {
      input_value = '';
    });
  }

  void backSpace() {
    print('backspace');
  }

  void undo() {
    print('undo');
  }

  void swap() {
    print('swap');
  }

  void addInput(String input) {
    setState(() {
      input_value += input;
    });
  }

  void getInput(String input) {
    switch (input) {
      case "=":
        equals();
        break;
      case "C":
        clear();
        break;
      case "B":
        backSpace();
        break;
      case "U":
        undo();
        break;
      case "S":
        swap();
        break;
      default:
        addInput(input);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                'Distance',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Icon(
                Icons.social_distance_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(39, 76, 119, 1.0),
      ),
      drawer: distance_drawer(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 140, 195, 235),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(30.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                            child: Text(
                              //Input Values===========================================
                              input_value,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(30.0),
                          margin: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                            child: Text(
                              //Input Units===========================================
                              'Test4',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 220, 232, 239),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(30.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                            child: Text(
                              //Output Values===========================================
                              'Test1',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(30.0),
                          margin: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                            child: Text(
                              //Output Units===========================================
                              'Test2',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CalculatorKeypad(
            passInput: getInput,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 243, 243),
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
