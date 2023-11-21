import 'package:cc206_converter_app/features/components/distance_func_drawer.dart';
import 'package:flutter/material.dart';

class CalculatorKeypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(231, 236, 239, 1),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CalculatorButton("7"),
              CalculatorButton("8"),
              CalculatorButton("9"),
              CalculatorIconButton(Icons.backspace),
            ],
          ),
          Row(
            children: [
              CalculatorButton("4"),
              CalculatorButton("5"),
              CalculatorButton("6"),
              CalculatorIconButton(Icons.undo),
            ],
          ),
          Row(
            children: [
              CalculatorButton("1"),
              CalculatorButton("2"),
              CalculatorButton("3"),
              CalculatorIconButton(Icons.swap_horiz),
            ],
          ),
          Row(
            children: [
              CalculatorButton("."),
              CalculatorButton("0"),
              CalculatorButton("C"),
              CalculatorButton("="),
            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final double height;

  CalculatorButton(this.text,
      {this.color, this.fontSize = 25, this.height = 50});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        margin: EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: color ?? const Color.fromRGBO(255, 255, 255, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, color: Colors.black),
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
                  padding: EdgeInsets.all(40.0),
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
                              '',
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
                              '',
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
                  padding: EdgeInsets.all(40.0),
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
                              '',
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
                              '',
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
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 243, 243),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          NumberPad(),
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
